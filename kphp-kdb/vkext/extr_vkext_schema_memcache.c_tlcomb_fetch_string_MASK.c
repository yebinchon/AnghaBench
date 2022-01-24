#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; char* val; } ;
struct TYPE_6__ {TYPE_2__ str; } ;
struct TYPE_8__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ zval ;
struct tl_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 int FUNC1 (char**) ; 
 scalar_t__ FUNC2 () ; 

void *FUNC3 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  char *a;
  int l = FUNC1 (&a);
  if (FUNC2 ()) { return 0; }
  FUNC0 (*arr);
  (*arr)->type = IS_STRING;
  (*arr)->value.str.len = l;
  (*arr)->value.str.val = a;
  TLUNI_NEXT;
}