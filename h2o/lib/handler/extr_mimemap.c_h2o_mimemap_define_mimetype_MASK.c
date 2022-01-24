#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
typedef  TYPE_2__ h2o_mimemap_type_t ;
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
typedef  int /*<<< orphan*/  h2o_mime_attributes_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(h2o_mimemap_t *mimemap, const char *ext, const char *mime, h2o_mime_attributes_t *attr)
{
    h2o_mimemap_type_t *new_type;

    if ((new_type = FUNC4(mimemap, FUNC1(mime, FUNC7(mime)), 1)) != NULL &&
        (attr == NULL || FUNC5(&new_type->data.attr, attr, sizeof(*attr)) == 0)) {
        FUNC2(new_type);
    } else {
        new_type = FUNC0(mime, attr);
    }
    FUNC6(mimemap, ext, new_type);
    FUNC3(new_type);
}