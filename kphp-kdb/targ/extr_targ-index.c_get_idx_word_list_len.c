
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int dummy; } ;
typedef int hash_t ;


 int assert (int) ;
 int bread_gamma_code (struct bitreader*) ;
 int bread_get_bits_read (struct bitreader*) ;
 int bread_init (struct bitreader*,unsigned char*,int ) ;
 unsigned char* idx_word_lookup (int ,int*) ;

int get_idx_word_list_len (hash_t word) {
  int len;
  unsigned char *ptr = idx_word_lookup (word, &len);
  if (!ptr) {
    return 0;
  }
  struct bitreader br;
  bread_init (&br, ptr, 0);
  int x = bread_gamma_code (&br);
  assert (bread_get_bits_read (&br) <= len * 8);
  return x;
}
