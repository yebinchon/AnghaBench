
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 scalar_t__ TARG_EXTENSION ;
 int assert (int ) ;
 char const* search_parse_search_extras (char const*) ;
 char const* targ_parse_search_extras (char const*) ;

__attribute__((used)) static const char *parse_search_extras (const char *ptr) {
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return search_parse_search_extras (ptr);
  } else if (TARG_EXTENSION) {
    return targ_parse_search_extras (ptr);
  } else {
    assert (0);
  }
}
