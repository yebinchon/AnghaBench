
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int search_query_heap_en_t ;


 int LAST_SEARCH_QUERY_BUFF_SIZE ;
 int copy_key ;
 scalar_t__* last_search_query ;
 int memcpy (scalar_t__*,char const*,int) ;
 int perform_query () ;
 int search_query_end (int *,int,void*,int ) ;
 int search_query_start (int *) ;
 int strcpy (scalar_t__*,char*) ;
 int vkprintf (int,char*,int) ;

int do_perform_query (const char *key, int len) {
  if (len < LAST_SEARCH_QUERY_BUFF_SIZE) {
    memcpy (last_search_query, key, len);
    last_search_query[len] = 0;
  } else {
    strcpy (last_search_query, "TOO LONG QUERY");
  }

  search_query_heap_en_t E;
  search_query_start (&E);
  int res = perform_query ();
  search_query_end (&E, res, (void *) key, copy_key);
  vkprintf (1, "perform_query result = %d\n", res);
  return res;
}
