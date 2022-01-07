
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_3__ {int sock; int * decompressed; int * recvbuf; int lock; } ;
typedef TYPE_1__ yrmcds ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_OK ;
 int close (int) ;
 int free (int *) ;
 int pthread_mutex_destroy (int *) ;

yrmcds_error yrmcds_close(yrmcds* c) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;
    if( c->sock == -1 )
        return YRMCDS_OK;

    close(c->sock);
    c->sock = -1;

    pthread_mutex_destroy(&(c->lock));

    free(c->recvbuf);
    c->recvbuf = ((void*)0);
    free(c->decompressed);
    c->decompressed = ((void*)0);
    return YRMCDS_OK;
}
