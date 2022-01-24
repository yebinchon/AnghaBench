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
struct TYPE_5__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct TYPE_6__ {char* member_1; int member_2; int /*<<< orphan*/  ref; scalar_t__ still_is_active; int /*<<< orphan*/  member_3; TYPE_1__ member_0; } ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterate_cb ; 
 int max_cnt ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* output ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    h2o_http2_scheduler_node_t scheduler;
    node_t nodeA = {{{NULL}}, "A", 1, 0};
    node_t nodeB = {{{NULL}}, "B", 1, 0};
    node_t nodeC = {{{NULL}}, "C", 1, 0};

    FUNC3(&scheduler);

    /*
     * root      root
     *  /\        |
     * A  B  =>   C
     *            |\
     *            A B
     */

    /* open A & B */
    FUNC4(&nodeA.ref, &scheduler, 32, 0);
    FUNC0(&nodeA.ref);
    FUNC4(&nodeB.ref, &scheduler, 32, 0);
    FUNC0(&nodeB.ref);

    output[0] = '\0';
    max_cnt = 5;
    FUNC5(&scheduler, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,B,A,B,A") == 0);

    /* add C as an exclusive */
    FUNC4(&nodeC.ref, &scheduler, 12, 1);

    /* should get A & B since C is inactive */
    output[0] = '\0';
    max_cnt = 5;
    FUNC5(&scheduler, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,B,A,B,A") == 0); /* under current impl, moving the deps causes them to be ordered using _all_ref */

    /* should see C once it is activated */
    FUNC0(&nodeC.ref);
    output[0] = '\0';
    max_cnt = 5;
    FUNC5(&scheduler, iterate_cb, NULL);
    FUNC6(FUNC7(output, "C,C,C,C,C") == 0);

    /* eventually disabling C should show A and B */
    nodeC.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 5;
    FUNC5(&scheduler, iterate_cb, NULL);
    FUNC6(FUNC7(output, "C,B,A,B,A") == 0);

    FUNC1(&nodeA.ref);
    FUNC1(&nodeB.ref);
    FUNC1(&nodeC.ref);
    FUNC2(&scheduler);
}