
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userformat_want {int notes; int source; } ;
struct strbuf {int dummy; } ;



__attribute__((used)) static size_t userformat_want_item(struct strbuf *sb, const char *placeholder,
       void *context)
{
 struct userformat_want *w = context;

 if (*placeholder == '+' || *placeholder == '-' || *placeholder == ' ')
  placeholder++;

 switch (*placeholder) {
 case 'N':
  w->notes = 1;
  break;
 case 'S':
  w->source = 1;
  break;
 }
 return 0;
}
