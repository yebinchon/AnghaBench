
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 scalar_t__ TARG_EXTENSION ;
 int assert (int ) ;
 int search_generate_new_key (char*,char const*,int,int) ;
 int targ_generate_new_key (char*,char const*,int,int) ;

__attribute__((used)) static int generate_new_key (char *ptr, const char *key, int len, int pos) {
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return search_generate_new_key (ptr, key, len, pos);
  } else if (TARG_EXTENSION) {
    return targ_generate_new_key (ptr, key, len, pos);
  } else {
    assert (0);
  }
}
