#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t size; TYPE_2__** entries; } ;
typedef  TYPE_3__ h2o_socketpool_target_vector_t ;
typedef  int /*<<< orphan*/  h2o_balancer_t ;
struct TYPE_8__ {int /*<<< orphan*/  leased_count; } ;
struct TYPE_9__ {TYPE_1__ _shared; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    h2o_socketpool_target_vector_t targets = FUNC3(10);
    size_t i, selected;
    char tried[10] = {0};
    int check_result = 1;
    h2o_balancer_t *balancer;

    balancer = FUNC4();

    for (i = 0; i < 10000; i++) {
        selected = FUNC6(balancer, &targets, tried);
        if (selected > 10) {
            FUNC5(selected >= 0 && selected < targets.size);
            goto Done;
        }
        check_result = FUNC0(&targets, selected);
        if (check_result == -1) {
            FUNC5(!check_result);
            goto Done;
        }
        targets.entries[selected]->_shared.leased_count++;
    }
    FUNC5(!check_result);

Done:
    FUNC2(&targets);
    FUNC1(balancer);
}