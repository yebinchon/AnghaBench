
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yrmcds_error ;


 scalar_t__ YRMCDS_OK ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* yrmcds_strerror (scalar_t__) ;

__attribute__((used)) static void check_error(yrmcds_error e) {
    if( e == YRMCDS_OK )
        return;

    fprintf(stderr, "yrmcds error: %s\n", yrmcds_strerror(e));
    exit(1);
}
