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
struct TYPE_5__ {int format; } ;
typedef  TYPE_1__ xcb_get_property_reply_t ;
typedef  scalar_t__ xcb_atom_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

bool FUNC2(xcb_get_property_reply_t *prop, xcb_atom_t atom) {
    if (prop == NULL || FUNC1(prop) == 0)
        return false;

    xcb_atom_t *atoms;
    if ((atoms = FUNC0(prop)) == NULL)
        return false;

    for (int i = 0; i < FUNC1(prop) / (prop->format / 8); i++)
        if (atoms[i] == atom)
            return true;

    return false;
}