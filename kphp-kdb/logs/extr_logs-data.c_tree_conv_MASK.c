#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val_type ;
struct TYPE_7__ {int /*<<< orphan*/  dtype; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int vn; int /*<<< orphan*/  is_const; TYPE_1__ tok; struct TYPE_8__** v; } ;
typedef  TYPE_2__ node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC1 (int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  op_conv ; 
 int /*<<< orphan*/  op_string ; 
 int /*<<< orphan*/  v_cstring ; 

node *FUNC3 (node *v, val_type new_type) {
  node *r = FUNC2();
  r->v = FUNC1 (sizeof (node *));
  r->vn = 1;
  r->v[0] = v;

  if (FUNC0 (new_type)) {
    r->tok.type = op_string;
    r->tok.dtype = v_cstring;
  } else {
    r->tok.type = op_conv;
    r->tok.dtype = new_type;
  }

  r->is_const = v->is_const;

  return r;
}