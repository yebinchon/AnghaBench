
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {char const* path; } ;
struct TYPE_9__ {int flags; int addrlen; int fd; void* saddr; struct timeval const* timeout; TYPE_1__ unix_sock; int connection_type; } ;
typedef TYPE_2__ redisContext ;


 int AF_UNIX ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EPROTONOSUPPORT ;
 int REDIS_BLOCK ;
 int REDIS_CONNECTED ;
 int REDIS_CONN_UNIX ;
 int REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int connect (int ,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int free (struct timeval const*) ;
 void* malloc (int) ;
 int memcpy (struct timeval const*,struct timeval const*,int) ;
 scalar_t__ redisContextTimeoutMsec (TYPE_2__*,long*) ;
 scalar_t__ redisContextWaitReady (TYPE_2__*,long) ;
 scalar_t__ redisCreateSocket (TYPE_2__*,int ) ;
 scalar_t__ redisSetBlocking (TYPE_2__*,int) ;
 char const* strdup (char const*) ;
 int strncpy (int ,char const*,int) ;

int redisContextConnectUnix(redisContext *c, const char *path, const struct timeval *timeout) {

    int blocking = (c->flags & REDIS_BLOCK);
    struct sockaddr_un *sa;
    long timeout_msec = -1;

    if (redisCreateSocket(c,AF_UNIX) < 0)
        return REDIS_ERR;
    if (redisSetBlocking(c,0) != REDIS_OK)
        return REDIS_ERR;

    c->connection_type = REDIS_CONN_UNIX;
    if (c->unix_sock.path != path)
        c->unix_sock.path = strdup(path);

    if (timeout) {
        if (c->timeout != timeout) {
            if (c->timeout == ((void*)0))
                c->timeout = malloc(sizeof(struct timeval));

            memcpy(c->timeout, timeout, sizeof(struct timeval));
        }
    } else {
        free(c->timeout);
        c->timeout = ((void*)0);
    }

    if (redisContextTimeoutMsec(c,&timeout_msec) != REDIS_OK)
        return REDIS_ERR;

    sa = (struct sockaddr_un*)(c->saddr = malloc(sizeof(struct sockaddr_un)));
    c->addrlen = sizeof(struct sockaddr_un);
    sa->sun_family = AF_UNIX;
    strncpy(sa->sun_path, path, sizeof(sa->sun_path) - 1);
    if (connect(c->fd, (struct sockaddr*)sa, sizeof(*sa)) == -1) {
        if (errno == EINPROGRESS && !blocking) {

        } else {
            if (redisContextWaitReady(c,timeout_msec) != REDIS_OK)
                return REDIS_ERR;
        }
    }


    if (blocking && redisSetBlocking(c,1) != REDIS_OK)
        return REDIS_ERR;

    c->flags |= REDIS_CONNECTED;
    return REDIS_OK;






}
