
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_3__ {scalar_t__ serial; int text_mode; int lock; } ;
typedef TYPE_1__ yrmcds ;


 int YRMCDS_BAD_ARGUMENT ;
 int YRMCDS_IN_BINARY ;
 int YRMCDS_OK ;
 int YRMCDS_SYSTEM_ERROR ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

yrmcds_error yrmcds_text_mode(yrmcds* c) {
    if( c == ((void*)0) )
        return YRMCDS_BAD_ARGUMENT;


    int e = pthread_mutex_lock(&c->lock);
    if( e != 0 ) {
        errno = e;
        return YRMCDS_SYSTEM_ERROR;
    }


    yrmcds_error ret = YRMCDS_OK;
    if( c->serial != 0 ) {
        ret = YRMCDS_IN_BINARY;
        goto OUT;
    }

    c->text_mode = 1;

  OUT:

    pthread_mutex_unlock(&c->lock);

    return ret;
}
