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
typedef  int /*<<< orphan*/  h2o_mimemap_type_t ;
struct TYPE_6__ {int /*<<< orphan*/ * default_type; } ;
typedef  TYPE_1__ h2o_mimemap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(h2o_mimemap_t *mimemap, h2o_mimemap_type_t *type)
{
    /* unlink the old one */
    FUNC3(mimemap, mimemap->default_type);
    FUNC1(mimemap->default_type);

    /* update */
    FUNC0(type);
    mimemap->default_type = type;
    FUNC2(mimemap, type);
    FUNC4(mimemap);
}