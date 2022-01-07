
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int e; int n; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {int dst_len; int dst; int src_len; int src; } ;
typedef int MPI ;


 int EBADMSG ;
 int EINVAL ;
 int ENOMEM ;
 int _rsa_enc (struct rsa_mpi_key const*,int ,int ) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int mpi_alloc (int ) ;
 int mpi_free (int ) ;
 int mpi_read_raw_from_sgl (int ,int ) ;
 int mpi_write_to_sgl (int ,int ,int ,int*) ;
 struct rsa_mpi_key* rsa_get_key (struct crypto_akcipher*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rsa_enc(struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 const struct rsa_mpi_key *pkey = rsa_get_key(tfm);
 MPI m, c = mpi_alloc(0);
 int ret = 0;
 int sign;

 if (!c)
  return -ENOMEM;

 if (unlikely(!pkey->n || !pkey->e)) {
  ret = -EINVAL;
  goto err_free_c;
 }

 ret = -ENOMEM;
 m = mpi_read_raw_from_sgl(req->src, req->src_len);
 if (!m)
  goto err_free_c;

 ret = _rsa_enc(pkey, c, m);
 if (ret)
  goto err_free_m;

 ret = mpi_write_to_sgl(c, req->dst, req->dst_len, &sign);
 if (ret)
  goto err_free_m;

 if (sign < 0)
  ret = -EBADMSG;

err_free_m:
 mpi_free(m);
err_free_c:
 mpi_free(c);
 return ret;
}
