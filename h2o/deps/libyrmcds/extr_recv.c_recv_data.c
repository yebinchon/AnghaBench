
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_3__ {int capacity; scalar_t__ used; char* recvbuf; int sock; } ;
typedef TYPE_1__ yrmcds ;
typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ RECV_SIZE ;
 int YRMCDS_DISCONNECTED ;
 int YRMCDS_OK ;
 int YRMCDS_OUT_OF_MEMORY ;
 int YRMCDS_SYSTEM_ERROR ;
 scalar_t__ errno ;
 scalar_t__ realloc (char*,size_t) ;
 int recv (int ,char*,scalar_t__,int ) ;

__attribute__((used)) static inline yrmcds_error recv_data(yrmcds* c) {
    if( (c->capacity - c->used) < RECV_SIZE ) {
        size_t new_capacity = c->capacity * 2;
        char* new_buffer = (char*)realloc(c->recvbuf, new_capacity);
        if( new_buffer == ((void*)0) )
            return YRMCDS_OUT_OF_MEMORY;
        c->recvbuf = new_buffer;
        c->capacity = new_capacity;
    }

    ssize_t n;
  AGAIN:
    n = recv(c->sock, c->recvbuf + c->used, RECV_SIZE, 0);
    if( n == -1 ) {
        if( errno == EINTR ) goto AGAIN;
        return YRMCDS_SYSTEM_ERROR;
    }
    if( n == 0 )
        return YRMCDS_DISCONNECTED;
    c->used += (size_t)n;
    return YRMCDS_OK;
}
