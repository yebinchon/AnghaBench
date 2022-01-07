
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {char const* text; } ;


 char* strchr (char const*,char) ;

__attribute__((used)) static const char *tl_token_skip_namespace (struct tl_token *T) {
  char *r = strchr (T->text, '.');
  if (r == ((void*)0)) {
    return T->text;
  }
  return r;
}
