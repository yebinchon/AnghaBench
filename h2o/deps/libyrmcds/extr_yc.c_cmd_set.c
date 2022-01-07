
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int serial; } ;
typedef TYPE_1__ yrmcds_response ;
typedef int yrmcds_error ;
typedef int yrmcds ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int CHECK_ERROR (int ) ;
 int CHECK_RESPONSE (TYPE_1__*) ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int print_response (TYPE_1__*) ;
 scalar_t__ quiet ;
 size_t read_data (char*,char**) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strtoull (char*,int *,int ) ;
 int yrmcds_noop (int *,int*) ;
 int yrmcds_recv (int *,TYPE_1__*) ;
 int yrmcds_set (int *,char const*,int ,char*,size_t,int,int,scalar_t__,scalar_t__,int*) ;

int cmd_set(int argc, char** argv, yrmcds* s) {
    if( argc < 2 || 5 < argc ) {
        fprintf(stderr, "Wrong number of arguments.\n");
        return 1;
    }
    const char* key = argv[0];
    char* data = ((void*)0);
    size_t data_len = read_data(argv[1], &data);
    if( data == ((void*)0) ) {
        fprintf(stderr, "Failed to read data.\n");
        return 2;
    }
    uint32_t expire = 0;
    uint32_t flags = 0;
    uint64_t cas = 0;

    if( argc > 2 )
        expire = (uint32_t)strtoull(argv[2], ((void*)0), 0);
    if( argc > 3 )
        flags = (uint32_t)strtoull(argv[3], ((void*)0), 0);
    if( argc > 4 )
        cas = (uint64_t)strtoull(argv[4], ((void*)0), 0);

    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = yrmcds_set(s, key, strlen(key), data, data_len,
                                flags, expire, cas, quiet, &serial);
    free(data);
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
