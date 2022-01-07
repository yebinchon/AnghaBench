
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_parse_resource {int sb; scalar_t__ stack; } ;


 int tl_scheme_object_free (scalar_t__) ;
 int tl_string_buffer_free (int *) ;

void tl_scheme_parse_cleanup (struct tl_scheme_parse_resource *R) {
  if (R->stack) {
    tl_scheme_object_free (R->stack);
  }
  tl_string_buffer_free (&R->sb);
}
