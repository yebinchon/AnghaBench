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
typedef  int /*<<< orphan*/  h2o_socketpool_target_vector_t ;
typedef  int /*<<< orphan*/  h2o_balancer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_socketpool_target_vector_t targets = FUNC2(10);
    char tried[10] = {0};
    size_t i;
    size_t selected;
    h2o_balancer_t *balancer;

    balancer = FUNC3();

    for (i = 0; i < 10; i++) {
        selected = FUNC5(balancer, &targets, tried);
        FUNC4(selected >= 0 && selected < 10);
        FUNC4(!tried[selected]);
        tried[selected] = 1;
    }

    FUNC0(balancer);

    FUNC1(&targets);
}