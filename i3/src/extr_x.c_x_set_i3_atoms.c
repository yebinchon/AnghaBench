
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int A_I3_CONFIG_PATH ;
 int A_I3_PID ;
 int A_I3_SOCKET_PATH ;
 int A_UTF8_STRING ;
 int XCB_ATOM_CARDINAL ;
 int XCB_PROP_MODE_REPLACE ;
 int conn ;
 int * current_configpath ;
 int * current_socketpath ;
 int getpid () ;
 int root ;
 int strlen (int *) ;
 int update_shmlog_atom () ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,int *) ;

void x_set_i3_atoms(void) {
    pid_t pid = getpid();
    xcb_change_property(conn, XCB_PROP_MODE_REPLACE, root, A_I3_SOCKET_PATH, A_UTF8_STRING, 8,
                        (current_socketpath == ((void*)0) ? 0 : strlen(current_socketpath)),
                        current_socketpath);
    xcb_change_property(conn, XCB_PROP_MODE_REPLACE, root, A_I3_PID, XCB_ATOM_CARDINAL, 32, 1, &pid);
    xcb_change_property(conn, XCB_PROP_MODE_REPLACE, root, A_I3_CONFIG_PATH, A_UTF8_STRING, 8,
                        strlen(current_configpath), current_configpath);
    update_shmlog_atom();
}
