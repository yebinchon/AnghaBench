
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 int fprintf (int ,char*) ;
 int stderr ;
 int uv_idle_stop (int *) ;

void crunch_away(uv_idle_t* handle) {




    fprintf(stderr, "Computing PI...\n");

    uv_idle_stop(handle);
}
