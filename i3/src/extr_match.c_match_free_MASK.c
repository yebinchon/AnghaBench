#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  workspace; int /*<<< orphan*/  window_role; int /*<<< orphan*/  mark; int /*<<< orphan*/  instance; int /*<<< orphan*/  class; int /*<<< orphan*/  application; int /*<<< orphan*/  title; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ Match ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Match *match) {
    FUNC0(match->error);
    FUNC1(match->title);
    FUNC1(match->application);
    FUNC1(match->class);
    FUNC1(match->instance);
    FUNC1(match->mark);
    FUNC1(match->window_role);
    FUNC1(match->workspace);
}