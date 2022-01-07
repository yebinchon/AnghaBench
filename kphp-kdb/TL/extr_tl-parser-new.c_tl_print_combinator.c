
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_constructor {char* real_id; char* id; int name; int right; int left; } ;


 int buf ;
 char* buf_pos ;
 int fprintf (int ,char*,char*,int ) ;
 int output_expressions ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int tl_buf_add_string (char*,int) ;
 int tl_buf_add_string_nospace (char*,int) ;
 int tl_buf_add_tree (int ,int) ;
 int tl_buf_reset () ;

int tl_print_combinator (struct tl_constructor *c) {
  tl_buf_reset ();
  tl_buf_add_string_nospace (c->real_id ? c->real_id : c->id, -1);
  static char _buf[10];
  sprintf (_buf, "#%08x", c->name);
  tl_buf_add_string_nospace (_buf, -1);
  tl_buf_add_tree (c->left, 1);
  tl_buf_add_string ("=", -1);
  tl_buf_add_tree (c->right, 1);
  if (output_expressions >= 1) {
    fprintf (stderr, "%.*s\n", buf_pos, buf);
  }



  return c->name;
}
