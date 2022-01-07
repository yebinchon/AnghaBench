
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int serial; } ;
typedef TYPE_1__ yrmcds_response ;
typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint32_t ;


 int CHECK_ERROR (int ) ;
 int CHECK_RESPONSE (TYPE_1__*) ;
 scalar_t__ debug ;
 int fprintf (int ,char*,int) ;
 int print_response (TYPE_1__*) ;
 scalar_t__ quiet ;
 int stderr ;
 scalar_t__ strtoull (char*,int *,int ) ;
 int yrmcds_flush (int *,int,scalar_t__,int*) ;
 int yrmcds_noop (int *,int*) ;
 int yrmcds_recv (int *,TYPE_1__*) ;

int cmd_flush(int argc, char** argv, yrmcds* s) {
    uint32_t delay = 0;
    if( argc == 1 )
        delay = (uint32_t)strtoull(argv[0], ((void*)0), 0);

    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = yrmcds_flush(s, delay, quiet, &serial);
    CHECK_ERROR(e);
    if( quiet ) {
        e = yrmcds_noop(s, &serial);
        CHECK_ERROR(e);
    }
    if( debug )
        fprintf(stderr, "request serial = %u\n", serial);
    while( 1 ) {
        e = yrmcds_recv(s, r);
        CHECK_ERROR(e);
        if( debug )
            print_response(r);
        CHECK_RESPONSE(r);
        if( r->serial == serial )
            break;
    }
    return 0;
}
