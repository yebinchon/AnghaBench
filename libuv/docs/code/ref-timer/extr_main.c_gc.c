
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int fprintf (int ,char*) ;
 int stderr ;

void gc(uv_timer_t *handle) {
    fprintf(stderr, "Freeing unused objects\n");
}
