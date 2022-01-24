#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct RClass* FUNC0 (int /*<<< orphan*/ *,struct RClass*) ; 

__attribute__((used)) static mrb_bool
FUNC1(mrb_state *mrb, struct RClass *c)
{
  struct RClass *t = c;         /* tortoise */
  struct RClass *h = c;         /* hare */

  for (;;) {
    if (h == NULL) return FALSE;
    h = FUNC0(mrb, h);
    if (h == NULL) return FALSE;
    h = FUNC0(mrb, h);
    t = FUNC0(mrb, t);
    if (t == h) return TRUE;
  }
}