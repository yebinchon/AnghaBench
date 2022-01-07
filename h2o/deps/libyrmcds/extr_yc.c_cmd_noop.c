
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_response ;
typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint32_t ;


 int CHECK_ERROR (int ) ;
 int CHECK_RESPONSE (int *) ;
 scalar_t__ debug ;
 int fprintf (int ,char*,int) ;
 int print_response (int *) ;
 int printf (char*) ;
 int stderr ;
 int yrmcds_noop (int *,int*) ;
 int yrmcds_recv (int *,int *) ;

int cmd_noop(int argc, char** argv, yrmcds* s) {
    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = yrmcds_noop(s, &serial);
    CHECK_ERROR(e);
    if( debug )
        fprintf(stderr, "request serial = %u\n", serial);
    e = yrmcds_recv(s, r);
    CHECK_ERROR(e);
    if( debug )
        print_response(r);
    CHECK_RESPONSE(r);
    printf("OK\n");
    return 0;
}
