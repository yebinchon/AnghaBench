
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;


 int assert (int) ;
 scalar_t__ bulklen (size_t) ;
 int countDigits (int) ;
 int * sdsMakeRoomFor (int *,unsigned long long) ;
 int * sdscatfmt (int *,char*,size_t) ;
 int * sdscatlen (int *,char const*,int) ;
 int * sdsempty () ;
 unsigned long long sdslen (int *) ;
 size_t const strlen (char const*) ;

int redisFormatSdsCommandArgv(sds *target, int argc, const char **argv,
                              const size_t *argvlen)
{
    sds cmd;
    unsigned long long totlen;
    int j;
    size_t len;


    if (target == ((void*)0))
        return -1;


    totlen = 1+countDigits(argc)+2;
    for (j = 0; j < argc; j++) {
        len = argvlen ? argvlen[j] : strlen(argv[j]);
        totlen += bulklen(len);
    }


    cmd = sdsempty();
    if (cmd == ((void*)0))
        return -1;


    cmd = sdsMakeRoomFor(cmd, totlen);
    if (cmd == ((void*)0))
        return -1;


    cmd = sdscatfmt(cmd, "*%i\r\n", argc);
    for (j=0; j < argc; j++) {
        len = argvlen ? argvlen[j] : strlen(argv[j]);
        cmd = sdscatfmt(cmd, "$%u\r\n", len);
        cmd = sdscatlen(cmd, argv[j], len);
        cmd = sdscatlen(cmd, "\r\n", sizeof("\r\n")-1);
    }

    assert(sdslen(cmd)==totlen);

    *target = cmd;
    return totlen;
}
