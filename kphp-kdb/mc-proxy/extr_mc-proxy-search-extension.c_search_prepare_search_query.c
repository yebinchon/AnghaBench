
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_search ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int search_prepare_search_query (const char *key, int len) {
  if (!strncmp (key, "search", 6)) {
    is_search = 1;
    return 6;
  } else {
    return -1;
  }
}
