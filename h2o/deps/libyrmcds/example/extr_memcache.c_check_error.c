
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yrmcds_error ;


 scalar_t__ YRMCDS_SYSTEM_ERROR ;
 int errno ;
 int error (int ,int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* yrmcds_strerror (scalar_t__) ;

void check_error(yrmcds_error e) {
    if( e != 0 ) {
        if( e == YRMCDS_SYSTEM_ERROR ) {
            error(0, errno, "system error");
        } else {
            fprintf(stderr, "yrmcds error: %s\n", yrmcds_strerror(e));
        }
        exit(2);
    }
}
