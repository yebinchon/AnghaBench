#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  _refcnt; } ;
typedef  TYPE_1__ yoml_t ;
typedef  int /*<<< orphan*/  resolve_tag_arg_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static yoml_t *FUNC3(const char *tag, yoml_t *node, void *cb_arg)
{
    resolve_tag_arg_t *arg = (resolve_tag_arg_t *)cb_arg;

    if (FUNC2(tag, "!file") == 0) {
        return FUNC1(node, arg);
    }

    if (FUNC2(tag, "!env") == 0) {
        return FUNC0(node, arg);
    }

    /* otherwise, return the node itself */
    ++node->_refcnt;
    return node;
}