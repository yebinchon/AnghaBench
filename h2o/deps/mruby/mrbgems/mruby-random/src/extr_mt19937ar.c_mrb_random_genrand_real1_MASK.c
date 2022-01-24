#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double double_; double int_; } ;
struct TYPE_6__ {TYPE_1__ gen; } ;
typedef  TYPE_2__ mt_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

double FUNC1(mt_state *t)
{
    FUNC0(t);
    t->gen.double_ =  t->gen.int_*(1.0/4294967295.0);
    return t->gen.double_;
    /* divided by 2^32-1 */
}