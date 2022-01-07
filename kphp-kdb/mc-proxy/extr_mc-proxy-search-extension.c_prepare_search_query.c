
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 scalar_t__ TARG_EXTENSION ;
 int assert (int ) ;
 scalar_t__ is_search ;
 int search_prepare_search_query (char const*,int) ;
 int targ_prepare_search_query (char const*,int) ;

__attribute__((used)) static int prepare_search_query (const char *key, int len) {
  is_search = 0;
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return search_prepare_search_query (key, len);
  } else if (TARG_EXTENSION) {
    return targ_prepare_search_query (key, len);
  } else {
    assert (0);
  }
}
