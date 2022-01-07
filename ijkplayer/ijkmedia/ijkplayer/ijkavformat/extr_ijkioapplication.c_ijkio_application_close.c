
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkIOApplicationContext ;


 int free (int *) ;

void ijkio_application_close(IjkIOApplicationContext *h) {
    free(h);
}
