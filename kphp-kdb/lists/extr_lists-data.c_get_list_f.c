
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;
typedef int list_id_t ;


 int * __get_list_f (int ,int) ;

__attribute__((used)) static inline list_t *get_list_f (list_id_t list_id) {
  return __get_list_f (list_id, 1);
}
