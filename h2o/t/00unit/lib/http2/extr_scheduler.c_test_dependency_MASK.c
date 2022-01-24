#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  node; } ;
struct TYPE_8__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_7__ {TYPE_2__ member_0; } ;
struct TYPE_9__ {char* member_1; int member_2; int still_is_active; TYPE_4__ ref; int /*<<< orphan*/  member_3; TYPE_1__ member_0; } ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
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
    node_t nodeD = {{{NULL}}, "D", 1, 0};

    /*
     * root
     *  /|\
     * A B C
     * |
     * D
     */

    FUNC3(&root);
    FUNC4(&nodeA.ref, &root, 32, 0);
    FUNC0(&nodeA.ref);
    FUNC4(&nodeB.ref, &root, 32, 0);
    FUNC0(&nodeB.ref);
    FUNC4(&nodeC.ref, &root, 12, 0);
    FUNC0(&nodeC.ref);
    FUNC4(&nodeD.ref, &nodeA.ref.node, 6, 0);
    FUNC0(&nodeD.ref);

    /* should get A and B (and some C) */
    output[0] = '\0';
    max_cnt = 20;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "A,B,A,B,C,A,B,A,B,A,B,C,A,B,A,B,C,A,B,A") == 0);

    /* eventually disactivate A, should get D,B (and some C) */
    nodeA.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 20;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "B,A,B,C,D,B,D,B,D,B,C,D,B,D,B,C,D,B,D,B") == 0);

    /* eventually disactivate B, should get D only (and some C) */
    nodeB.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 20;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "D,B,C,D,D,D,C,D,D,C,D,D,D,C,D,D,C,D,D,D") == 0);

    /* closing A raises D, and the priority becomes D = B > C */
    FUNC1(&nodeA.ref);
    FUNC0(&nodeB.ref);
    nodeB.still_is_active = 1;
    output[0] = '\0';
    max_cnt = 20;
    FUNC5(&root, iterate_cb, NULL);
    FUNC6(FUNC7(output, "D,C,B,D,B,D,B,C,D,B,D,B,D,C,B,D,B,D,B,C") == 0);

    FUNC1(&nodeB.ref);
    FUNC1(&nodeC.ref);
    FUNC1(&nodeD.ref);
    FUNC2(&root);
}