#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pathconf; } ;
struct TYPE_6__ {TYPE_3__ dynamic; } ;
struct TYPE_7__ {TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ h2o_mimemap_type_t ;
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MIMEMAP_TYPE_DYNAMIC ; 
 scalar_t__ dispose_dynamic_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static h2o_mimemap_type_t *FUNC3(h2o_globalconf_t *globalconf, h2o_mimemap_t *mimemap)
{
    h2o_mimemap_type_t *type = FUNC1(NULL, sizeof(*type), (void (*)(void *))dispose_dynamic_type);

    type->type = H2O_MIMEMAP_TYPE_DYNAMIC;
    FUNC2(&type->data.dynamic, 0, sizeof(type->data.dynamic));
    FUNC0(&type->data.dynamic.pathconf, globalconf, NULL, mimemap);

    return type;
}