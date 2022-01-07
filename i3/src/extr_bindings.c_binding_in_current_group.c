
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_state_mask; } ;
typedef TYPE_1__ Binding ;


 int ELOG (char*,int) ;
 int I3_XKB_GROUP_MASK_1 ;
 int I3_XKB_GROUP_MASK_2 ;
 int I3_XKB_GROUP_MASK_3 ;
 int I3_XKB_GROUP_MASK_4 ;
 int I3_XKB_GROUP_MASK_ANY ;




 int xkb_current_group ;

__attribute__((used)) static bool binding_in_current_group(const Binding *bind) {

    if ((bind->event_state_mask >> 16) == I3_XKB_GROUP_MASK_ANY)
        return 1;
    switch (xkb_current_group) {
        case 131:
            return ((bind->event_state_mask >> 16) & I3_XKB_GROUP_MASK_1);
        case 130:
            return ((bind->event_state_mask >> 16) & I3_XKB_GROUP_MASK_2);
        case 129:
            return ((bind->event_state_mask >> 16) & I3_XKB_GROUP_MASK_3);
        case 128:
            return ((bind->event_state_mask >> 16) & I3_XKB_GROUP_MASK_4);
        default:
            ELOG("BUG: xkb_current_group (= %d) outside of [XCB_XKB_GROUP_1..XCB_XKB_GROUP_4]\n", xkb_current_group);
            return 0;
    }
}
