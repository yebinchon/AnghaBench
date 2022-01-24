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
struct TYPE_6__ {char* member_1; int member_2; int still_is_active; int /*<<< orphan*/  ref; int /*<<< orphan*/  member_3; TYPE_1__ member_0; } ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterate_cb ; 
 int max_cnt ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* output ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    h2o_http2_scheduler_node_t root;
    node_t nodeA = {{{NULL}}, "A", 1, 0};
    node_t nodeB = {{{NULL}}, "B", 1, 0};
    node_t nodeC = {{{NULL}}, "C", 1, 0};

    FUNC3(&root);
    FUNC4(&nodeA.ref, &root, 1, 0);
    FUNC4(&nodeB.ref, &root, 1, 0);
    FUNC4(&nodeC.ref, &root, 1, 0);

    /* none are active */
    output[0] = '\0';
    max_cnt = 4;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "") == 0);

    /* set A to active */
    FUNC0(&nodeA.ref);
    output[0] = '\0';
    max_cnt = 4;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,A,A,A") == 0);

    /* A should change to inactive */
    nodeA.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 4;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A") == 0);

    /* set all to active */
    FUNC0(&nodeA.ref);
    nodeA.still_is_active = 1;
    FUNC0(&nodeB.ref);
    FUNC0(&nodeC.ref);
    output[0] = '\0';
    max_cnt = 7;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,B,C,A,B,C,A") == 0);

    /* change them to inactive */
    nodeA.still_is_active = 0;
    nodeB.still_is_active = 0;
    nodeC.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 4;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "B,C,A") == 0);

    /* close C */
    FUNC1(&nodeC.ref);
    FUNC0(&nodeA.ref);
    FUNC0(&nodeB.ref);
    output[0] = '\0';
    max_cnt = 4;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,B") == 0);

    FUNC1(&nodeA.ref);
    FUNC1(&nodeB.ref);
    FUNC2(&root);
}