#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {struct TYPE_4__* filename; } ;
typedef  TYPE_1__ listcmd_parser_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(mrb_state *mrb, listcmd_parser_state *st)
{
  if (st != NULL) {
    if (st->filename != NULL) {
      FUNC0(mrb, st->filename);
    }
    FUNC0(mrb, st);
  }
}