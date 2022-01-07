
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int init_threads () ;
 scalar_t__ pthread_atfork (int *,int *,int *) ;
 int reset_once ;

__attribute__((used)) static void init_once(void) {





  if (pthread_atfork(((void*)0), ((void*)0), &reset_once))
    abort();

  init_threads();
}
