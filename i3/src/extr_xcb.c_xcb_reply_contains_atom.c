
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ xcb_get_property_reply_t ;
typedef scalar_t__ xcb_atom_t ;


 scalar_t__* xcb_get_property_value (TYPE_1__*) ;
 int xcb_get_property_value_length (TYPE_1__*) ;

bool xcb_reply_contains_atom(xcb_get_property_reply_t *prop, xcb_atom_t atom) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0)
        return 0;

    xcb_atom_t *atoms;
    if ((atoms = xcb_get_property_value(prop)) == ((void*)0))
        return 0;

    for (int i = 0; i < xcb_get_property_value_length(prop) / (prop->format / 8); i++)
        if (atoms[i] == atom)
            return 1;

    return 0;
}
