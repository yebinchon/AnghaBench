
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ yrmcds_error ;
struct TYPE_3__ {int sock; char* recvbuf; int capacity; scalar_t__ rserial; scalar_t__ text_mode; scalar_t__ invalid; int * decompressed; scalar_t__ last_size; scalar_t__ used; int lock; scalar_t__ compress_size; scalar_t__ serial; } ;
typedef TYPE_1__ yrmcds ;
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

yrmcds_error yrmcds_connect(yrmcds* c, const char* node, uint16_t port) {
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
    c->compress_size = 0;
    c->recvbuf = (char*)malloc(1 << 20);
    if( c->recvbuf == ((void*)0) ) {
        close(server_fd);

        pthread_mutex_destroy(&(c->lock));

        return YRMCDS_OUT_OF_MEMORY;
    }
    c->capacity = 1 << 20;
    c->used = 0;
    c->last_size = 0;
    c->decompressed = ((void*)0);
    c->invalid = 0;
    c->text_mode = 0;
    c->rserial = 0;
    return YRMCDS_OK;
}
