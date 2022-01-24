#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  request; int /*<<< orphan*/  input_stream; } ;
struct st_mruby_subreq_t {TYPE_1__ refs; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_mruby_subreq_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(mrb_state *mrb, void *_subreq)
{
    struct st_mruby_subreq_t *subreq = _subreq;
    if (subreq == NULL)
        return;
    subreq->refs.input_stream = FUNC2();
    if (FUNC1(subreq->refs.request))
        FUNC0(subreq);
}