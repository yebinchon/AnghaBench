
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_xrm_database_t ;


 int DLOG (char*,...) ;
 int ELOG (char*,...) ;
 double HUGE_VAL ;
 int * conn ;
 scalar_t__ dpi ;
 int free (char*) ;
 scalar_t__ init_dpi_fallback () ;
 scalar_t__ lround (double) ;
 double strtod (char*,char**) ;
 int xcb_xrm_database_free (int *) ;
 int * xcb_xrm_database_from_default (int *) ;
 int xcb_xrm_resource_get_string (int *,char*,int *,char**) ;

void init_dpi(void) {
    xcb_xrm_database_t *database = ((void*)0);
    char *resource = ((void*)0);

    if (conn == ((void*)0)) {
        goto init_dpi_end;
    }

    database = xcb_xrm_database_from_default(conn);
    if (database == ((void*)0)) {
        ELOG("Failed to open the resource database.\n");
        goto init_dpi_end;
    }

    xcb_xrm_resource_get_string(database, "Xft.dpi", ((void*)0), &resource);
    if (resource == ((void*)0)) {
        DLOG("Resource Xft.dpi not specified, skipping.\n");
        goto init_dpi_end;
    }

    char *endptr;
    double in_dpi = strtod(resource, &endptr);
    if (in_dpi == HUGE_VAL || dpi < 0 || *endptr != '\0' || endptr == resource) {
        ELOG("Xft.dpi = %s is an invalid number and couldn't be parsed.\n", resource);
        dpi = 0;
        goto init_dpi_end;
    }
    dpi = lround(in_dpi);

    DLOG("Found Xft.dpi = %ld.\n", dpi);

init_dpi_end:
    free(resource);

    if (database != ((void*)0)) {
        xcb_xrm_database_free(database);
    }

    if (dpi == 0) {
        DLOG("Using fallback for calculating DPI.\n");
        dpi = init_dpi_fallback();
        DLOG("Using dpi = %ld\n", dpi);
    }
}
