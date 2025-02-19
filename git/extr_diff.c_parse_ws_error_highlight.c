
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WSEH_CONTEXT ;
 unsigned int WSEH_NEW ;
 unsigned int WSEH_OLD ;
 scalar_t__ parse_one_token (char const**,char*) ;

__attribute__((used)) static int parse_ws_error_highlight(const char *arg)
{
 const char *orig_arg = arg;
 unsigned val = 0;

 while (*arg) {
  if (parse_one_token(&arg, "none"))
   val = 0;
  else if (parse_one_token(&arg, "default"))
   val = WSEH_NEW;
  else if (parse_one_token(&arg, "all"))
   val = WSEH_NEW | WSEH_OLD | WSEH_CONTEXT;
  else if (parse_one_token(&arg, "new"))
   val |= WSEH_NEW;
  else if (parse_one_token(&arg, "old"))
   val |= WSEH_OLD;
  else if (parse_one_token(&arg, "context"))
   val |= WSEH_CONTEXT;
  else {
   return -1 - (int)(arg - orig_arg);
  }
  if (*arg)
   arg++;
 }
 return val;
}
