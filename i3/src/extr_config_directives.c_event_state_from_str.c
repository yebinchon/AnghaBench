
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3_event_state_mask_t ;


 int I3_XKB_GROUP_MASK_1 ;
 int I3_XKB_GROUP_MASK_2 ;
 int I3_XKB_GROUP_MASK_3 ;
 int I3_XKB_GROUP_MASK_4 ;
 int XCB_KEY_BUT_MASK_CONTROL ;
 int XCB_KEY_BUT_MASK_MOD_1 ;
 int XCB_KEY_BUT_MASK_MOD_2 ;
 int XCB_KEY_BUT_MASK_MOD_3 ;
 int XCB_KEY_BUT_MASK_MOD_4 ;
 int XCB_KEY_BUT_MASK_MOD_5 ;
 int XCB_KEY_BUT_MASK_SHIFT ;
 int * strstr (char const*,char*) ;

i3_event_state_mask_t event_state_from_str(const char *str) {


    i3_event_state_mask_t result = 0;
    if (str == ((void*)0))
        return result;
    if (strstr(str, "Mod1") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_MOD_1;
    if (strstr(str, "Mod2") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_MOD_2;
    if (strstr(str, "Mod3") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_MOD_3;
    if (strstr(str, "Mod4") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_MOD_4;
    if (strstr(str, "Mod5") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_MOD_5;
    if (strstr(str, "Control") != ((void*)0) ||
        strstr(str, "Ctrl") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_CONTROL;
    if (strstr(str, "Shift") != ((void*)0))
        result |= XCB_KEY_BUT_MASK_SHIFT;

    if (strstr(str, "Group1") != ((void*)0))
        result |= (I3_XKB_GROUP_MASK_1 << 16);
    if (strstr(str, "Group2") != ((void*)0) ||
        strstr(str, "Mode_switch") != ((void*)0))
        result |= (I3_XKB_GROUP_MASK_2 << 16);
    if (strstr(str, "Group3") != ((void*)0))
        result |= (I3_XKB_GROUP_MASK_3 << 16);
    if (strstr(str, "Group4") != ((void*)0))
        result |= (I3_XKB_GROUP_MASK_4 << 16);
    return result;
}
