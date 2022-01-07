
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
 int fprintf (int ,char*,...) ;
 int print_response (TYPE_1__*) ;
 scalar_t__ quiet ;
 int stderr ;
 int strlen (char const*) ;
 int strtoull (char*,int *,int ) ;
 int yrmcds_noop (int *,int*) ;
 int yrmcds_recv (int *,TYPE_1__*) ;
 int yrmcds_touch (int *,char const*,int ,int,scalar_t__,int*) ;

int cmd_touch(int argc, char** argv, yrmcds* s) {
    if( argc != 2 ) {
        fprintf(stderr, "Wrong number of arguments.\n");
        return 1;
    }
    const char* key = argv[0];
    uint32_t expire = (uint32_t)strtoull(argv[1], ((void*)0), 0);

    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = yrmcds_touch(s, key, strlen(key), expire, quiet, &serial);
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
