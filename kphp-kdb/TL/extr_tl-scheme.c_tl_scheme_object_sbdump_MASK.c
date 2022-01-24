#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct tl_scheme_object* car; struct tl_scheme_object* cdr; } ;
struct TYPE_4__ {TYPE_1__ p; int /*<<< orphan*/  s; int /*<<< orphan*/  d; int /*<<< orphan*/  l; int /*<<< orphan*/  i; } ;
struct tl_scheme_object {int type; TYPE_2__ u; } ;
struct tl_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tl_scheme_object obj_empty_list ; 
 int /*<<< orphan*/  FUNC1 (struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_buffer*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_buffer*,char*,...) ; 
#define  tlso_double 135 
#define  tlso_function 134 
#define  tlso_int 133 
#define  tlso_list 132 
#define  tlso_long 131 
#define  tlso_open_round_bracket 130 
#define  tlso_open_square_bracket 129 
#define  tlso_str 128 

void FUNC5 (struct tl_buffer *b, struct tl_scheme_object *O) {
  char ch, obrace, cbrace;
  struct tl_scheme_object *p;
  switch (O->type) {
    case tlso_int:
      FUNC4 (b, "%d", O->u.i);
    break;
    case tlso_long:
      FUNC4 (b, "%lld", O->u.l);
    break;
    case tlso_double:
      FUNC4 (b, "%.15lg", O->u.d);
    break;
    case tlso_str:
      FUNC2 (b, O->u.s);
    break;
    case tlso_function:
      FUNC4 (b, "%s", O->u.s);
    break;
    case tlso_list:
      ch = 0;
      if (O->u.p.cdr != NULL && O->u.p.car->type == tlso_open_square_bracket) {
        obrace = '[';
        cbrace = ']';
        O = O->u.p.cdr;
      } else {
        obrace = '(';
        cbrace = ')';
      }
      FUNC3 (b, obrace);
      for (p = O; p != &obj_empty_list; p = p->u.p.cdr) {
        FUNC0 (p->type == tlso_list);
        if (ch != 0) {
          FUNC3 (b, ch);
        }
        FUNC5 (b, p->u.p.car);
        ch = FUNC1 (p->u.p.car) ? 0 : ' ';
      }
      FUNC3 (b, cbrace);
    break;
    case tlso_open_round_bracket:
      FUNC4 (b, "(");
    break;
    case tlso_open_square_bracket:
      FUNC4 (b, "[");
    break;
  }
}