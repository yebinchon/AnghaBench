#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ capa; } ;
struct TYPE_6__ {char* ptr; TYPE_1__ aux; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_3__ heap; } ;
struct RString {int /*<<< orphan*/  flags; TYPE_2__ as; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 size_t MRB_INT_MAX ; 
 int /*<<< orphan*/  MRB_STR_NOFREE ; 
 struct RString* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct RString*
FUNC2(mrb_state *mrb, const char *p, size_t len)
{
  struct RString *s;

  if (len >= MRB_INT_MAX) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "string size too big");
  }
  s = FUNC0(mrb);
  s->as.heap.len = (mrb_int)len;
  s->as.heap.aux.capa = 0;             /* nofree */
  s->as.heap.ptr = (char *)p;
  s->flags = MRB_STR_NOFREE;

  return s;
}