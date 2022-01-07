
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;
typedef int redisReader ;
typedef int cbuf ;


 int REDIS_ERR_PROTOCOL ;
 int __redisReaderSetError (int *,int ,char*) ;
 int chrtos (char*,int,char) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void __redisReaderSetErrorProtocolByte(redisReader *r, char byte) {
    char cbuf[8], sbuf[128];

    chrtos(cbuf,sizeof(cbuf),byte);
    snprintf(sbuf,sizeof(sbuf),
        "Protocol error, got %s as reply type byte", cbuf);
    __redisReaderSetError(r,REDIS_ERR_PROTOCOL,sbuf);
}
