
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_object {int dummy; } ;
struct tl_int_array {int dummy; } ;
struct tl_compiler {int dummy; } ;


 int TL_SECTION_FUNCTIONS ;
 int tl_expression_serialize_general (struct tl_compiler*,struct tl_scheme_object*,int ,int *,struct tl_int_array*) ;

int tl_expression_serialize (struct tl_compiler *C, struct tl_scheme_object *E, struct tl_int_array *a) {
  return tl_expression_serialize_general (C, E, TL_SECTION_FUNCTIONS, ((void*)0), a);
}
