
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_key_symbols_t ;
typedef int xcb_get_modifier_mapping_reply_t ;
typedef int xcb_get_modifier_mapping_cookie_t ;
typedef int uint32_t ;


 int conn ;
 int free (int *) ;
 int get_mod_mask_for (int ,int *,int *) ;
 int xcb_flush (int ) ;
 int xcb_get_modifier_mapping (int ) ;
 int * xcb_get_modifier_mapping_reply (int ,int ,int *) ;

uint32_t aio_get_mod_mask_for(uint32_t keysym, xcb_key_symbols_t *symbols) {
    xcb_get_modifier_mapping_cookie_t cookie;
    xcb_get_modifier_mapping_reply_t *modmap_r;

    xcb_flush(conn);


    cookie = xcb_get_modifier_mapping(conn);
    if (!(modmap_r = xcb_get_modifier_mapping_reply(conn, cookie, ((void*)0))))
        return 0;

    uint32_t result = get_mod_mask_for(keysym, symbols, modmap_r);
    free(modmap_r);
    return result;
}
