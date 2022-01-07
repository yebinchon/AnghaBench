
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct loop_device {struct crypto_sync_skcipher* key_data; } ;
struct crypto_sync_skcipher {int dummy; } ;
typedef int sector_t ;
typedef int (* encdec_cbc_t ) (int ) ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int LOOP_IV_SECTOR_SIZE ;
 int READ ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,struct crypto_sync_skcipher*) ;
 int cpu_to_le32 (int) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 int min (int,int ) ;
 int req ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int const,unsigned int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,int const,int *) ;
 int skcipher_request_set_sync_tfm (int ,struct crypto_sync_skcipher*) ;
 int skcipher_request_zero (int ) ;

__attribute__((used)) static int
cryptoloop_transfer(struct loop_device *lo, int cmd,
      struct page *raw_page, unsigned raw_off,
      struct page *loop_page, unsigned loop_off,
      int size, sector_t IV)
{
 struct crypto_sync_skcipher *tfm = lo->key_data;
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, tfm);
 struct scatterlist sg_out;
 struct scatterlist sg_in;

 encdec_cbc_t encdecfunc;
 struct page *in_page, *out_page;
 unsigned in_offs, out_offs;
 int err;

 skcipher_request_set_sync_tfm(req, tfm);
 skcipher_request_set_callback(req, CRYPTO_TFM_REQ_MAY_SLEEP,
          ((void*)0), ((void*)0));

 sg_init_table(&sg_out, 1);
 sg_init_table(&sg_in, 1);

 if (cmd == READ) {
  in_page = raw_page;
  in_offs = raw_off;
  out_page = loop_page;
  out_offs = loop_off;
  encdecfunc = crypto_skcipher_decrypt;
 } else {
  in_page = loop_page;
  in_offs = loop_off;
  out_page = raw_page;
  out_offs = raw_off;
  encdecfunc = crypto_skcipher_encrypt;
 }

 while (size > 0) {
  const int sz = min(size, LOOP_IV_SECTOR_SIZE);
  u32 iv[4] = { 0, };
  iv[0] = cpu_to_le32(IV & 0xffffffff);

  sg_set_page(&sg_in, in_page, sz, in_offs);
  sg_set_page(&sg_out, out_page, sz, out_offs);

  skcipher_request_set_crypt(req, &sg_in, &sg_out, sz, iv);
  err = encdecfunc(req);
  if (err)
   goto out;

  IV++;
  size -= sz;
  in_offs += sz;
  out_offs += sz;
 }

 err = 0;

out:
 skcipher_request_zero(req);
 return err;
}
