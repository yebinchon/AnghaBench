
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ num_threads; int num_threads_idle; } ;


 int h2o_error_printf (char*,int ) ;
 int h2o_fatal (char*,int ) ;
 int h2o_strerror_r (int,char*,int) ;
 int lookup_thread_main ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int) ;
 int pthread_attr_setstacksize (int *,int) ;
 int pthread_create (int *,int *,int ,int *) ;
 TYPE_1__ queue ;

__attribute__((used)) static void create_lookup_thread(void)
{
    pthread_t tid;
    pthread_attr_t attr;
    int ret;

    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, 1);
    pthread_attr_setstacksize(&attr, 100 * 1024);
    if ((ret = pthread_create(&tid, ((void*)0), lookup_thread_main, ((void*)0))) != 0) {
        char buf[128];
        if (queue.num_threads == 0) {
            h2o_fatal("failed to start first thread for getaddrinfo: %s", h2o_strerror_r(ret, buf, sizeof(buf)));
        } else {
            h2o_error_printf("pthread_create(for getaddrinfo): %s", h2o_strerror_r(ret, buf, sizeof(buf)));
        }
        return;
    }

    ++queue.num_threads;
    ++queue.num_threads_idle;
}
