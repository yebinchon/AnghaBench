
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tl_scheme_object* car; struct tl_scheme_object* cdr; } ;
struct TYPE_4__ {TYPE_1__ p; int s; int d; int l; int i; } ;
struct tl_scheme_object {int type; TYPE_2__ u; } ;
struct tl_buffer {int dummy; } ;


 int assert (int) ;
 struct tl_scheme_object obj_empty_list ;
 int tl_scheme_object_is_colon_terminated_function (struct tl_scheme_object*) ;
 int tl_scheme_object_sbdump_str (struct tl_buffer*,int ) ;
 int tl_string_buffer_append_char (struct tl_buffer*,char) ;
 int tl_string_buffer_printf (struct tl_buffer*,char*,...) ;
void tl_scheme_object_sbdump (struct tl_buffer *b, struct tl_scheme_object *O) {
  char ch, obrace, cbrace;
  struct tl_scheme_object *p;
  switch (O->type) {
    case 133:
      tl_string_buffer_printf (b, "%d", O->u.i);
    break;
    case 131:
      tl_string_buffer_printf (b, "%lld", O->u.l);
    break;
    case 135:
      tl_string_buffer_printf (b, "%.15lg", O->u.d);
    break;
    case 128:
      tl_scheme_object_sbdump_str (b, O->u.s);
    break;
    case 134:
      tl_string_buffer_printf (b, "%s", O->u.s);
    break;
    case 132:
      ch = 0;
      if (O->u.p.cdr != ((void*)0) && O->u.p.car->type == 129) {
        obrace = '[';
        cbrace = ']';
        O = O->u.p.cdr;
      } else {
        obrace = '(';
        cbrace = ')';
      }
      tl_string_buffer_append_char (b, obrace);
      for (p = O; p != &obj_empty_list; p = p->u.p.cdr) {
        assert (p->type == 132);
        if (ch != 0) {
          tl_string_buffer_append_char (b, ch);
        }
        tl_scheme_object_sbdump (b, p->u.p.car);
        ch = tl_scheme_object_is_colon_terminated_function (p->u.p.car) ? 0 : ' ';
      }
      tl_string_buffer_append_char (b, cbrace);
    break;
    case 130:
      tl_string_buffer_printf (b, "(");
    break;
    case 129:
      tl_string_buffer_printf (b, "[");
    break;
  }
}
