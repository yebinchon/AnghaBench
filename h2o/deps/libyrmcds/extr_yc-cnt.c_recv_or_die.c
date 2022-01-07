
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ yrmcds_error ;
struct TYPE_4__ {scalar_t__ serial; } ;
typedef TYPE_1__ yrmcds_cnt_response ;
typedef int yrmcds_cnt ;
typedef scalar_t__ uint32_t ;


 scalar_t__ YRMCDS_OK ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int yrmcds_cnt_close (int *) ;
 scalar_t__ yrmcds_cnt_recv (int *,TYPE_1__*) ;
 char* yrmcds_strerror (scalar_t__) ;

__attribute__((used)) static void recv_or_die(yrmcds_cnt* c, yrmcds_cnt_response* r, uint32_t serial) {
    yrmcds_error e;
    while( 1 ) {
        e = yrmcds_cnt_recv(c, r);
        if( e != YRMCDS_OK ) {
            fprintf(stderr, "yc-cnt: failed to recv: %s\n",
                    yrmcds_strerror(e));
            yrmcds_cnt_close(c);
            exit(1);
        }
        if( r->serial == serial )
            break;
    }
}
