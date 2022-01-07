
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int dummy; } ;


 scalar_t__ get_literal_global () ;
 char const* parse_long_magic (unsigned int*,int*,struct pathspec_item*,char const*) ;
 char const* parse_short_magic (unsigned int*,char const*) ;

__attribute__((used)) static const char *parse_element_magic(unsigned *magic, int *prefix_len,
           struct pathspec_item *item,
           const char *elem)
{
 if (elem[0] != ':' || get_literal_global())
  return elem;
 else if (elem[1] == '(')

  return parse_long_magic(magic, prefix_len, item, elem);
 else

  return parse_short_magic(magic, elem);
}
