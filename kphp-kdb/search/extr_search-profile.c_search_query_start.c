
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_time; } ;
typedef TYPE_1__ search_query_heap_en_t ;


 int get_rusage_time () ;

void search_query_start (search_query_heap_en_t *E) {
  E->cpu_time = -get_rusage_time ();
}
