
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atom; } ;


 int A_WM_CLIENT_LEADER ;
 int A_WM_WINDOW_ROLE ;
 int A__MOTIF_WM_HINTS ;
 int A__NET_WM_NAME ;
 int A__NET_WM_STRUT_PARTIAL ;
 int A__NET_WM_WINDOW_TYPE ;
 int XCB_ATOM_WM_CLASS ;
 int XCB_ATOM_WM_HINTS ;
 int XCB_ATOM_WM_NAME ;
 int XCB_ATOM_WM_NORMAL_HINTS ;
 int XCB_ATOM_WM_TRANSIENT_FOR ;
 int conn_screen ;
 TYPE_1__* property_handlers ;
 int sn_monitor_context_new (int ,int ,int ,int *,int *) ;
 int sndisplay ;
 int startup_monitor_event ;

void property_handlers_init(void) {
    sn_monitor_context_new(sndisplay, conn_screen, startup_monitor_event, ((void*)0), ((void*)0));

    property_handlers[0].atom = A__NET_WM_NAME;
    property_handlers[1].atom = XCB_ATOM_WM_HINTS;
    property_handlers[2].atom = XCB_ATOM_WM_NAME;
    property_handlers[3].atom = XCB_ATOM_WM_NORMAL_HINTS;
    property_handlers[4].atom = A_WM_CLIENT_LEADER;
    property_handlers[5].atom = XCB_ATOM_WM_TRANSIENT_FOR;
    property_handlers[6].atom = A_WM_WINDOW_ROLE;
    property_handlers[7].atom = XCB_ATOM_WM_CLASS;
    property_handlers[8].atom = A__NET_WM_STRUT_PARTIAL;
    property_handlers[9].atom = A__NET_WM_WINDOW_TYPE;
    property_handlers[10].atom = A__MOTIF_WM_HINTS;
}
