
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_4__ {int * records; } ;
struct TYPE_5__ {int sock; TYPE_1__ stats; int * recvbuf; int lock; } ;
typedef TYPE_2__ yrmcds_cnt ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_OK ;
 int close (int) ;
 int free (int *) ;
 int pthread_mutex_destroy (int *) ;

yrmcds_error
yrmcds_cnt_close(yrmcds_cnt* c) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;
    if( c->sock == -1 )
        return YRMCDS_OK;

    close(c->sock);
    c->sock = -1;

    pthread_mutex_destroy(&(c->lock));

    free(c->recvbuf);
    c->recvbuf = ((void*)0);
    free(c->stats.records);
    c->stats.records = ((void*)0);
    return YRMCDS_OK;
}
