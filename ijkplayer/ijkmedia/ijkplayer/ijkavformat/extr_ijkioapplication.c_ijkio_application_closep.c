
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkIOApplicationContext ;


 int ijkio_application_close (int *) ;

void ijkio_application_closep(IjkIOApplicationContext **ph) {
    if (!ph || !*ph)
        return;

    ijkio_application_close(*ph);
    *ph = ((void*)0);
}
