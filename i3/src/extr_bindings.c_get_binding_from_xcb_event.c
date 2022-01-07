
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int detail; } ;
typedef TYPE_1__ xcb_key_press_event_t ;
struct TYPE_5__ {scalar_t__ response_type; } ;
typedef TYPE_2__ xcb_generic_event_t ;
typedef int uint16_t ;
typedef int input_type_t ;
typedef int i3_event_state_mask_t ;
typedef int Binding ;


 int B_KEYBOARD ;
 int B_MOUSE ;
 int DLOG (char*,int) ;
 int I3_XKB_GROUP_MASK_1 ;
 int I3_XKB_GROUP_MASK_2 ;
 int I3_XKB_GROUP_MASK_3 ;
 int I3_XKB_GROUP_MASK_4 ;
 scalar_t__ XCB_BUTTON_PRESS ;
 scalar_t__ XCB_BUTTON_RELEASE ;
 scalar_t__ XCB_KEY_RELEASE ;
 int const XCB_MOD_MASK_LOCK ;




 int * get_binding (int,int const,int const,int const) ;

Binding *get_binding_from_xcb_event(xcb_generic_event_t *event) {
    const bool is_release = (event->response_type == XCB_KEY_RELEASE ||
                             event->response_type == XCB_BUTTON_RELEASE);

    const input_type_t input_type = ((event->response_type == XCB_BUTTON_RELEASE ||
                                      event->response_type == XCB_BUTTON_PRESS)
                                         ? B_MOUSE
                                         : B_KEYBOARD);

    const uint16_t event_state = ((xcb_key_press_event_t *)event)->state;
    const uint16_t event_detail = ((xcb_key_press_event_t *)event)->detail;


    i3_event_state_mask_t state_filtered = event_state & ~XCB_MOD_MASK_LOCK;
    DLOG("(removed capslock, state = 0x%x)\n", state_filtered);
    switch ((event_state & 0x6000) >> 13) {
        case 131:
            state_filtered |= (I3_XKB_GROUP_MASK_1 << 16);
            break;
        case 130:
            state_filtered |= (I3_XKB_GROUP_MASK_2 << 16);
            break;
        case 129:
            state_filtered |= (I3_XKB_GROUP_MASK_3 << 16);
            break;
        case 128:
            state_filtered |= (I3_XKB_GROUP_MASK_4 << 16);
            break;
    }
    state_filtered &= ~0x6000;
    DLOG("(transformed keyboard group, state = 0x%x)\n", state_filtered);
    return get_binding(state_filtered, is_release, event_detail, input_type);
}
