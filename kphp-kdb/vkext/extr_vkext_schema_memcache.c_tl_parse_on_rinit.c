
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_VARS ;
 scalar_t__ __vars ;
 scalar_t__ last_var_ptr ;

void tl_parse_on_rinit (void) {
  last_var_ptr = __vars + MAX_VARS;
}
