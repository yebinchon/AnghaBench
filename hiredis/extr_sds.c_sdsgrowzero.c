
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;


 int memset (int ,int ,size_t) ;
 int * sdsMakeRoomFor (int *,size_t) ;
 size_t sdslen (int *) ;
 int sdssetlen (int *,size_t) ;

sds sdsgrowzero(sds s, size_t len) {
    size_t curlen = sdslen(s);

    if (len <= curlen) return s;
    s = sdsMakeRoomFor(s,len-curlen);
    if (s == ((void*)0)) return ((void*)0);


    memset(s+curlen,0,(len-curlen+1));
    sdssetlen(s, len);
    return s;
}
