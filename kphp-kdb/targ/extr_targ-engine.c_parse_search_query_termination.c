
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* parse_search_extras (char const*) ;

__attribute__((used)) static inline int parse_search_query_termination (const char *where) {
  where = parse_search_extras (where);
  return *where == ')' && !where[1];
}
