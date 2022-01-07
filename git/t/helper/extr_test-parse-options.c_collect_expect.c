
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {void* util; } ;
struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct option {scalar_t__ value; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,...) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_detach (struct strbuf*,int *) ;
 char* strchr (char const*,char) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;

__attribute__((used)) static int collect_expect(const struct option *opt, const char *arg, int unset)
{
 struct string_list *expect;
 struct string_list_item *item;
 struct strbuf label = STRBUF_INIT;
 const char *colon;

 if (!arg || unset)
  die("malformed --expect option");

 expect = (struct string_list *)opt->value;
 colon = strchr(arg, ':');
 if (!colon)
  die("malformed --expect option, lacking a colon");
 strbuf_add(&label, arg, colon - arg);
 item = string_list_insert(expect, strbuf_detach(&label, ((void*)0)));
 if (item->util)
  die("malformed --expect option, duplicate %s", label.buf);
 item->util = (void *)arg;
 return 0;
}
