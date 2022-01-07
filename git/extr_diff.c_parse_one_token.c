
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skip_prefix (char const*,char const*,char const**) ;

__attribute__((used)) static int parse_one_token(const char **arg, const char *token)
{
 const char *rest;
 if (skip_prefix(*arg, token, &rest) && (!*rest || *rest == ',')) {
  *arg = rest;
  return 1;
 }
 return 0;
}
