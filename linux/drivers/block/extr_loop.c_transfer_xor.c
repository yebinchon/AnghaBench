
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct loop_device {char* lo_encrypt_key; int lo_encrypt_key_size; } ;
typedef int sector_t ;


 int READ ;
 int cond_resched () ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;

__attribute__((used)) static int transfer_xor(struct loop_device *lo, int cmd,
   struct page *raw_page, unsigned raw_off,
   struct page *loop_page, unsigned loop_off,
   int size, sector_t real_block)
{
 char *raw_buf = kmap_atomic(raw_page) + raw_off;
 char *loop_buf = kmap_atomic(loop_page) + loop_off;
 char *in, *out, *key;
 int i, keysize;

 if (cmd == READ) {
  in = raw_buf;
  out = loop_buf;
 } else {
  in = loop_buf;
  out = raw_buf;
 }

 key = lo->lo_encrypt_key;
 keysize = lo->lo_encrypt_key_size;
 for (i = 0; i < size; i++)
  *out++ = *in++ ^ key[(i & 511) % keysize];

 kunmap_atomic(loop_buf);
 kunmap_atomic(raw_buf);
 cond_resched();
 return 0;
}
