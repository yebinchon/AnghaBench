
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void redisCallback ;


 void* malloc (int) ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void *callbackValDup(void *privdata, const void *src) {
    ((void) privdata);
    redisCallback *dup = malloc(sizeof(*dup));
    memcpy(dup,src,sizeof(*dup));
    return dup;
}
