
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nb_iterator_t ;


 int __tl_fetch_init (int *,int ,int ,int *,int) ;
 int tl_in_nbit_methods ;
 int tl_type_nbit ;

int tl_fetch_init_iterator (nb_iterator_t *it, int size) {
  return __tl_fetch_init (it, 0, tl_type_nbit, &tl_in_nbit_methods, size);
}
