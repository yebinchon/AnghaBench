
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_history_strings ;
 unsigned short alloc_history_strings_size ;
 int free (char*) ;

__attribute__((used)) static inline void free_aux_history_data (long aux_addr) {

  aux_addr &= (1LL << 56) - 1;

  alloc_history_strings--;
  alloc_history_strings_size -= *(unsigned short *)(aux_addr - 2) + 3;
  free ((char *) aux_addr - 2);
}
