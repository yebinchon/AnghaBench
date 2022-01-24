#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* opaque; int /*<<< orphan*/  mutex; int /*<<< orphan*/  (* func_destroy ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ IJKFF_Pipenode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(IJKFF_Pipenode *node)
{
    if (!node)
        return;

    if (node->func_destroy) {
        node->func_destroy(node);
    }

    FUNC0(&node->mutex);

    FUNC1(node->opaque);
    FUNC2(node, 0, sizeof(IJKFF_Pipenode));
    FUNC1(node);
}