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
struct rp_handler_t {int /*<<< orphan*/  sockpool; } ;
typedef  int /*<<< orphan*/  h2o_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(h2o_handler_t *_self)
{
    struct rp_handler_t *self = (void *)_self;

    FUNC1(self->sockpool);
    FUNC0(self->sockpool);
}