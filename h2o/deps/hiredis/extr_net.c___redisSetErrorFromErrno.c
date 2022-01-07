
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int buf ;


 int __redisSetError (int *,int,char*) ;
 int __redis_strerror_r (int,char*,int) ;
 int errno ;
 size_t snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void __redisSetErrorFromErrno(redisContext *c, int type, const char *prefix) {
    int errorno = errno;
    char buf[128] = { 0 };
    size_t len = 0;

    if (prefix != ((void*)0))
        len = snprintf(buf,sizeof(buf),"%s: ",prefix);
    __redis_strerror_r(errorno, (char *)(buf + len), sizeof(buf) - len);
    __redisSetError(c,type,buf);
}
