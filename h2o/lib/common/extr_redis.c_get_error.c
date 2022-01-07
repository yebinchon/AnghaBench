
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err; char const* errstr; } ;
typedef TYPE_1__ redisAsyncContext ;


 int ETIMEDOUT ;






 int errno ;
 int h2o_fatal (char*) ;
 char const* h2o_redis_error_connect_timeout ;
 char const* h2o_redis_error_connection ;
 char const* h2o_redis_error_protocol ;

__attribute__((used)) static const char *get_error(const redisAsyncContext *redis)
{
    switch (redis->err) {
    case 128:
        return ((void*)0);
    case 132:

        if (errno == ETIMEDOUT) {
            return h2o_redis_error_connect_timeout;
        } else {
            return h2o_redis_error_connection;
        }
    case 133:
        return h2o_redis_error_connection;
    case 129:
        return h2o_redis_error_protocol;
    case 131:
    case 130:
        return redis->errstr;
    default:
        h2o_fatal("FIXME");
    }
}
