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
struct TYPE_9__ {char* member_1; TYPE_4__ ref; TYPE_1__ member_0; } ;
typedef  TYPE_3__ node_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* output ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  test_reprioritize_exclusive ; 

__attribute__((used)) static void FUNC8(void)
{
    /* from 5.3.3 of HTTP-2 draft 16
     *    ?                ?                ?                 ?
     *    |               / \               |                 |
     *    A              D   A              D                 D
     *   / \            /   / \            / \                |
     *  B   C     ==>  F   B   C   ==>    F   A       OR      A
     *     / \                 |             / \             /|\
     *    D   E                E            B   C           B C F
     *    |                                     |             |
     *    F                                     E             E
     *               (intermediate)   (non-exclusive)    (exclusive)
     */
    h2o_http2_scheduler_node_t root;
    node_t a = {{{NULL}}, "A"};
    node_t b = {{{NULL}}, "B"};
    node_t c = {{{NULL}}, "C"};
    node_t d = {{{NULL}}, "D"};
    node_t e = {{{NULL}}, "E"};
    node_t f = {{{NULL}}, "F"};

    FUNC3(&root);
    FUNC4(&a.ref, &root, 6, 0);
    FUNC4(&b.ref, &a.ref.node, 5, 0);
    FUNC4(&c.ref, &a.ref.node, 4, 0);
    FUNC4(&d.ref, &c.ref.node, 3, 0);
    FUNC4(&e.ref, &c.ref.node, 2, 0);
    FUNC4(&f.ref, &d.ref.node, 1, 0);

    output[0] = '\0';
    FUNC0(&root);
    FUNC6(FUNC7(output, "(A6(B5C4(D3(F1)E2)))") == 0);

    FUNC5(&a.ref, &d.ref.node, 1, test_reprioritize_exclusive);
    output[0] = '\0';
    FUNC0(&root);
    if (!test_reprioritize_exclusive) {
        FUNC6(FUNC7(output, "(D3(F1A1(B5C4(E2))))") == 0);
    } else {
        FUNC6(FUNC7(output, "(D3(A1(B5C4(E2)F1)))") == 0);
    }

    FUNC1(&a.ref);
    FUNC1(&b.ref);
    FUNC1(&c.ref);
    FUNC1(&d.ref);
    FUNC1(&e.ref);
    FUNC1(&f.ref);
    FUNC2(&root);
}