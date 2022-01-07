
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_2__* reader; int fd; scalar_t__ err; } ;
typedef TYPE_1__ redisContext ;
typedef int buf ;
struct TYPE_6__ {char* errstr; int err; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int REDIS_BLOCK ;
 int REDIS_ERR ;
 int REDIS_ERR_EOF ;
 int REDIS_ERR_IO ;
 scalar_t__ REDIS_OK ;
 int __redisSetError (TYPE_1__*,int ,char*) ;
 scalar_t__ errno ;
 int read (int ,char*,int) ;
 scalar_t__ redisReaderFeed (TYPE_2__*,char*,int) ;

int redisBufferRead(redisContext *c) {
    char buf[1024*16];
    int nread;


    if (c->err)
        return REDIS_ERR;

    nread = read(c->fd,buf,sizeof(buf));
    if (nread == -1) {
        if ((errno == EAGAIN && !(c->flags & REDIS_BLOCK)) || (errno == EINTR)) {

        } else {
            __redisSetError(c,REDIS_ERR_IO,((void*)0));
            return REDIS_ERR;
        }
    } else if (nread == 0) {
        __redisSetError(c,REDIS_ERR_EOF,"Server closed the connection");
        return REDIS_ERR;
    } else {
        if (redisReaderFeed(c->reader,buf,nread) != REDIS_OK) {
            __redisSetError(c,c->reader->err,c->reader->errstr);
            return REDIS_ERR;
        }
    }
    return REDIS_OK;
}
