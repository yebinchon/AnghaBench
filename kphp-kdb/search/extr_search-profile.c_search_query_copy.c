
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int query; int expiration_time; int res; int cpu_time; } ;
typedef TYPE_1__ search_query_heap_en_t ;


 int strcpy (int ,int ) ;

__attribute__((used)) static void search_query_copy (search_query_heap_en_t *D, search_query_heap_en_t *S) {
  D->cpu_time = S->cpu_time;
  D->res = S->res;
  D->expiration_time = S->expiration_time;
  strcpy (D->query, S->query);
}
