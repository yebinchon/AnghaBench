
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static inline bool match_option(const char *arg, int arglen, const char *opt)
{
 int len = strlen(opt);

 return len == arglen && !strncmp(arg, opt, len);
}
