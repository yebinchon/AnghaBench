
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int magic; } ;


 int PATHSPEC_ICASE ;
 int strncasecmp (char const*,char const*,size_t) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline int ps_strncmp(const struct pathspec_item *item,
        const char *s1, const char *s2, size_t n)
{
 if (item->magic & PATHSPEC_ICASE)
  return strncasecmp(s1, s2, n);
 else
  return strncmp(s1, s2, n);
}
