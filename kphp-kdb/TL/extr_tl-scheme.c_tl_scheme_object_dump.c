
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_object {int dummy; } ;
struct tl_buffer {char* buff; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int tl_scheme_object_sbdump (struct tl_buffer*,struct tl_scheme_object*) ;
 int tl_string_buffer_append_char (struct tl_buffer*,int ) ;
 int tl_string_buffer_free (struct tl_buffer*) ;
 int tl_string_buffer_init (struct tl_buffer*) ;

void tl_scheme_object_dump (FILE *f, struct tl_scheme_object *O) {
  struct tl_buffer b;
  tl_string_buffer_init (&b);
  tl_scheme_object_sbdump (&b, O);
  tl_string_buffer_append_char (&b, 0);
  fprintf (f, "%s", b.buff);
  tl_string_buffer_free (&b);
}
