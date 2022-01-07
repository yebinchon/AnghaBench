
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ yrmcds_error ;
struct TYPE_4__ {int * records; scalar_t__ capacity; scalar_t__ count; } ;
struct TYPE_5__ {int sock; char* recvbuf; int capacity; TYPE_1__ stats; scalar_t__ invalid; scalar_t__ last_size; scalar_t__ used; int lock; scalar_t__ serial; } ;
typedef TYPE_2__ yrmcds_cnt ;
typedef int uint16_t ;


 scalar_t__ YRMCDS_BAD_ARGUMENT ;
 scalar_t__ YRMCDS_OK ;
 scalar_t__ YRMCDS_OUT_OF_MEMORY ;
 scalar_t__ YRMCDS_SYSTEM_ERROR ;
 int close (int) ;
 scalar_t__ connect_to_server (char const*,int ,int*) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;

yrmcds_error yrmcds_cnt_connect(yrmcds_cnt* c, const char* node, uint16_t port) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;

    int e = pthread_mutex_init(&(c->lock), ((void*)0));
    if( e != 0 ) {
        errno = e;
        return YRMCDS_SYSTEM_ERROR;
    }

    int server_fd;
    yrmcds_error err = connect_to_server(node, port, &server_fd);
    if( err != YRMCDS_OK )
        return err;
    c->sock = server_fd;
    c->serial = 0;
    c->recvbuf = (char*)malloc(4096);
    if( c->recvbuf == ((void*)0) ) {
        close(server_fd);

        pthread_mutex_destroy(&(c->lock));

        return YRMCDS_OUT_OF_MEMORY;
    }
    c->capacity = 4096;
    c->used = 0;
    c->last_size = 0;
    c->invalid = 0;
    c->stats.count = c->stats.capacity = 0;
    c->stats.records = ((void*)0);
    return YRMCDS_OK;
}
