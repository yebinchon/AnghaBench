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
struct TYPE_8__ {TYPE_1__* key; } ;
typedef  TYPE_3__ yoml_mapping_element_t ;
struct TYPE_7__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_6__ {TYPE_2__ data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const yoml_mapping_element_t *x, const yoml_mapping_element_t *y)
{
    size_t xlen = FUNC1(x->key->data.scalar), ylen = FUNC1(y->key->data.scalar);
    if (xlen < ylen)
        return 1;
    else if (xlen > ylen)
        return -1;
    /* apply strcmp for stable sort */
    return FUNC0(x->key->data.scalar, y->key->data.scalar);
}