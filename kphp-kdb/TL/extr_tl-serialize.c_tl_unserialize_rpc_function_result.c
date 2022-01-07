
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_object {int dummy; } ;
struct tl_compiler {int dummy; } ;
struct tl_buffer {int dummy; } ;


 int TL_SECTION_TYPES ;
 int tl_compiler_clear_errors (struct tl_compiler*) ;
 int tl_expression_unserialize (struct tl_compiler*,int*,int,int,char*,struct tl_scheme_object**) ;
 int tl_scheme_object_free (struct tl_scheme_object*) ;
 int tl_scheme_object_sbdump (struct tl_buffer*,struct tl_scheme_object*) ;
 int tl_scheme_object_sbdump_indent (struct tl_buffer*,struct tl_scheme_object*,int ) ;

int tl_unserialize_rpc_function_result (struct tl_compiler *C, struct tl_buffer *b, int *input, int ilen, char *result_typename, int indentation) {
  struct tl_scheme_object *O = ((void*)0);
  tl_compiler_clear_errors (C);
  int r = tl_expression_unserialize (C, input, ilen, 1 << TL_SECTION_TYPES, result_typename, &O);
  if (r >= 0 && O != ((void*)0)) {
    if (indentation) {
      tl_scheme_object_sbdump_indent (b, O, 0);
    } else {
      tl_scheme_object_sbdump (b, O);
    }
    tl_scheme_object_free (O);
  }
  return r;
}
