
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int hm_composite_typename; int * hm_combinator; int * hm_magic; int tmp_error_buff; int * error_msg; } ;


 int TL_MAX_ERRORS ;
 int cstr_free (int *) ;
 int tl_hashmap_free (int *) ;
 int tl_list_expressions_free (struct tl_compiler*,int) ;
 int tl_string_buffer_free (int *) ;

void tl_compiler_free (struct tl_compiler *C) {
  int i;
  for (i = 0; i < TL_MAX_ERRORS; i++) {
    cstr_free (&C->error_msg[i]);
  }
  tl_string_buffer_free (&C->tmp_error_buff);
  for (i = 0; i < 2; i++) {
    tl_list_expressions_free (C, i);
    tl_hashmap_free (&C->hm_magic[i]);
    tl_hashmap_free (&C->hm_combinator[i]);
  }
  tl_hashmap_free (&C->hm_composite_typename);
}
