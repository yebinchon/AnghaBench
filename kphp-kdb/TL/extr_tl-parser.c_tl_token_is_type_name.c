
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {int dummy; } ;


 scalar_t__ isupper (char const) ;
 char* tl_token_skip_namespace (struct tl_token*) ;

__attribute__((used)) static int tl_token_is_type_name (struct tl_token *T) {
  const char *r = tl_token_skip_namespace (T);
  return isupper(r[0]) ? 1 : 0;
}
