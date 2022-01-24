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
struct TYPE_6__ {char* member_1; int member_2; int /*<<< orphan*/  ref; int /*<<< orphan*/  member_3; TYPE_1__ member_0; } ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* output ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    h2o_http2_scheduler_node_t root;
    node_t nodeA = {{{NULL}}, "A", 1, 0};
    node_t nodeB = {{{NULL}}, "B", 1, 0};
    node_t nodeC = {{{NULL}}, "C", 1, 0};

    FUNC4(&root);

    /* open them all with priority=16 */
    FUNC5(&nodeA.ref, &root, 16, 0);
    FUNC1(&nodeA.ref);
    FUNC5(&nodeB.ref, &root, 16, 0);
    FUNC1(&nodeB.ref);
    FUNC5(&nodeC.ref, &root, 16, 0);
    FUNC1(&nodeC.ref);

    output[0] = '\0';
    FUNC0(&root);
    FUNC7(FUNC8(output, "(A16B16C16)") == 0);

    FUNC6(&nodeB.ref, &root, 1, 1);

    output[0] = '\0';
    FUNC0(&root);
    FUNC7(FUNC8(output, "(B1(A16C16))") == 0);

    FUNC2(&nodeA.ref);
    FUNC2(&nodeB.ref);
    FUNC2(&nodeC.ref);
    FUNC3(&root);
}