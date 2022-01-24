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
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
struct TYPE_3__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3()
{
    h2o_mimemap_t *mimemap = FUNC1();
    const char *exts[] = {".php", NULL};
    h2o_globalconf_t global = {NULL};
    FUNC2(mimemap, exts, &global);
    FUNC0(mimemap);
}