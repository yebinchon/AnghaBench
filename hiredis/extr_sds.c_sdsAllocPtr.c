
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;


 int sdsHdrSize (int ) ;

void *sdsAllocPtr(sds s) {
    return (void*) (s-sdsHdrSize(s[-1]));
}
