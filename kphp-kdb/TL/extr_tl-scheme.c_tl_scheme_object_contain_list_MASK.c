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
struct TYPE_3__ {struct tl_scheme_object* cdr; struct tl_scheme_object* car; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
struct tl_scheme_object {scalar_t__ type; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tl_scheme_object obj_empty_list ; 
 scalar_t__ tlso_list ; 

__attribute__((used)) static int FUNC1 (struct tl_scheme_object *O) {
  if (O->type != tlso_list) {
    return 0;
  }
  while (O != &obj_empty_list) {
    FUNC0 (O->type == tlso_list);
    struct tl_scheme_object *A = O->u.p.car;
    if (A->type == tlso_list) {
      return 1;
    }
    O = O->u.p.cdr;
  }
  return 0;
}