#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int i3_event_state_mask_t ;

/* Variables and functions */
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
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 

i3_event_state_mask_t FUNC1(const char *str) {
    /* It might be better to use strtok() here, but the simpler strstr() should
     * do for now. */
    i3_event_state_mask_t result = 0;
    if (str == NULL)
        return result;
    if (FUNC0(str, "Mod1") != NULL)
        result |= XCB_KEY_BUT_MASK_MOD_1;
    if (FUNC0(str, "Mod2") != NULL)
        result |= XCB_KEY_BUT_MASK_MOD_2;
    if (FUNC0(str, "Mod3") != NULL)
        result |= XCB_KEY_BUT_MASK_MOD_3;
    if (FUNC0(str, "Mod4") != NULL)
        result |= XCB_KEY_BUT_MASK_MOD_4;
    if (FUNC0(str, "Mod5") != NULL)
        result |= XCB_KEY_BUT_MASK_MOD_5;
    if (FUNC0(str, "Control") != NULL ||
        FUNC0(str, "Ctrl") != NULL)
        result |= XCB_KEY_BUT_MASK_CONTROL;
    if (FUNC0(str, "Shift") != NULL)
        result |= XCB_KEY_BUT_MASK_SHIFT;

    if (FUNC0(str, "Group1") != NULL)
        result |= (I3_XKB_GROUP_MASK_1 << 16);
    if (FUNC0(str, "Group2") != NULL ||
        FUNC0(str, "Mode_switch") != NULL)
        result |= (I3_XKB_GROUP_MASK_2 << 16);
    if (FUNC0(str, "Group3") != NULL)
        result |= (I3_XKB_GROUP_MASK_3 << 16);
    if (FUNC0(str, "Group4") != NULL)
        result |= (I3_XKB_GROUP_MASK_4 << 16);
    return result;
}