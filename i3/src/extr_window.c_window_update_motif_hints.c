
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_get_property_reply_t ;
typedef int uint32_t ;
typedef int i3Window ;
typedef int border_style_t ;


 int BS_NONE ;
 int BS_NORMAL ;
 int BS_PIXEL ;
 int FREE (int *) ;
 int MWM_DECOR_ALL ;
 int MWM_DECOR_BORDER ;
 int MWM_DECOR_TITLE ;
 int MWM_HINTS_DECORATIONS ;
 size_t MWM_HINTS_DECORATIONS_FIELD ;
 size_t MWM_HINTS_FLAGS_FIELD ;
 scalar_t__ xcb_get_property_value (int *) ;
 scalar_t__ xcb_get_property_value_length (int *) ;

void window_update_motif_hints(i3Window *win, xcb_get_property_reply_t *prop, border_style_t *motif_border_style) {
    if (motif_border_style != ((void*)0))
        *motif_border_style = BS_NORMAL;

    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        FREE(prop);
        return;
    }
    uint32_t *motif_hints = (uint32_t *)xcb_get_property_value(prop);

    if (motif_border_style != ((void*)0) &&
        motif_hints[0] & (1 << 1)) {
        if (motif_hints[2] & (1 << 0) ||
            motif_hints[2] & (1 << 3))
            *motif_border_style = BS_NORMAL;
        else if (motif_hints[2] & (1 << 1))
            *motif_border_style = BS_PIXEL;
        else
            *motif_border_style = BS_NONE;
    }

    FREE(prop);







}
