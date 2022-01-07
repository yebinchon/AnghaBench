
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_history_strings ;
 int alloc_history_strings_size ;
 int assert (int) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static inline char *alloc_aux_history_data (const char *string, int length) {
  assert ((unsigned) length <= 65535);
  char *ptr = malloc (length + 3) + 2;
  *((short *)(ptr - 2)) = length;
  memcpy (ptr, string, length);
  ptr[length] = 0;
  alloc_history_strings++;
  alloc_history_strings_size += length + 3;
  return ptr;
}
