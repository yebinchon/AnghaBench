
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int query; } ;
typedef TYPE_1__ search_query_heap_en_t ;


 char* SEARCH_QUERY_MAX_SIZE ;
 int sprintf (int ,char*,char*,char*) ;

void copy_key (search_query_heap_en_t *E, void *key) {
  sprintf (E->query, "%.*s", SEARCH_QUERY_MAX_SIZE - 1, (char *) key);
}
