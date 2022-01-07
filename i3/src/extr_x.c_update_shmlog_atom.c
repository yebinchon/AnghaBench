
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_I3_SHMLOG_PATH ;
 int A_UTF8_STRING ;
 int XCB_PROP_MODE_REPLACE ;
 int conn ;
 int root ;
 char* shmlogname ;
 int strlen (char*) ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int ,char*) ;
 int xcb_delete_property (int ,int ,int ) ;

void update_shmlog_atom(void) {
    if (*shmlogname == '\0') {
        xcb_delete_property(conn, root, A_I3_SHMLOG_PATH);
    } else {
        xcb_change_property(conn, XCB_PROP_MODE_REPLACE, root,
                            A_I3_SHMLOG_PATH, A_UTF8_STRING, 8,
                            strlen(shmlogname), shmlogname);
    }
}
