#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ IjkCacheTreeInfo ;

/* Variables and functions */
 int /*<<< orphan*/  enu_free ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *parm, int64_t key, void *elem)
{
    IjkCacheTreeInfo *info = elem;
    FUNC2(info->root, NULL, NULL, enu_free);
    FUNC1(info->root);
    FUNC0(info);
    return 0;
}