
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELOG (char*) ;
 int * conn ;
 int * database ;
 int * xcb_xrm_database_from_default (int *) ;
 int * xcb_xrm_database_from_string (char*) ;
 int xcb_xrm_resource_get_string (int *,char*,int *,char**) ;

__attribute__((used)) static char *get_resource(char *name) {
    if (conn == ((void*)0)) {
        return ((void*)0);
    }


    if (database == ((void*)0)) {
        database = xcb_xrm_database_from_default(conn);

        if (database == ((void*)0)) {
            ELOG("Failed to open the resource database.\n");



            database = xcb_xrm_database_from_string("");

            return ((void*)0);
        }
    }

    char *resource;
    xcb_xrm_resource_get_string(database, name, ((void*)0), &resource);
    return resource;
}
