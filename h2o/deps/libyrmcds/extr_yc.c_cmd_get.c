
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int serial; } ;
typedef TYPE_1__ yrmcds_response ;
typedef int yrmcds_error ;
typedef int yrmcds ;
typedef int uint32_t ;


 int CHECK_ERROR (int ) ;
 int CHECK_RESPONSE (TYPE_1__*) ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int print_response (TYPE_1__*) ;
 scalar_t__ quiet ;
 int stderr ;
 int strlen (char*) ;
 int write_data (TYPE_1__*) ;
 int yrmcds_get (int *,char*,int ,scalar_t__,int*) ;
 int yrmcds_noop (int *,int*) ;
 int yrmcds_recv (int *,TYPE_1__*) ;

int cmd_get(int argc, char** argv, yrmcds* s) {
    if( argc != 1 ) {
        fprintf(stderr, "Wrong number of arguments.\n");
        return 1;
    }
    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = yrmcds_get(s, argv[0], strlen(argv[0]), quiet, &serial);
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
    write_data(r);
    return 0;
}
