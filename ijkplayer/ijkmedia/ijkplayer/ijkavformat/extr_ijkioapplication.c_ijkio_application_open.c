
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkIOApplicationContext ;


 int ijkio_application_alloc (int **,void*) ;

int ijkio_application_open(IjkIOApplicationContext **ph, void *opaque) {
    int ret = ijkio_application_alloc(ph, opaque);
    if (ret)
        return ret;

    return 0;
}
