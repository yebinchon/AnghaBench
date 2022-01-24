#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* opaque; int /*<<< orphan*/ * mutex; } ;
typedef  TYPE_1__ IJKFF_Pipenode ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

IJKFF_Pipenode *FUNC3(size_t opaque_size)
{
    IJKFF_Pipenode *node = (IJKFF_Pipenode*) FUNC1(1, sizeof(IJKFF_Pipenode));
    if (!node)
        return NULL;

    node->opaque = FUNC1(1, opaque_size);
    if (!node->opaque) {
        FUNC2(node);
        return NULL;
    }

    node->mutex = FUNC0();
    if (node->mutex == NULL) {
        FUNC2(node->opaque);
        FUNC2(node);
        return NULL;
    }

    return node;
}