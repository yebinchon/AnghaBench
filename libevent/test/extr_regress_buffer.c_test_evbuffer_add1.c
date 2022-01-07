
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_printf (struct evbuffer*,char*) ;
 int evbuffer_expand (struct evbuffer*,int) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 scalar_t__ evbuffer_pullup (struct evbuffer*,int) ;
 int evbuffer_validate (struct evbuffer*) ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_evbuffer_add1(void *ptr)
{
 struct evbuffer *buf;
 char *str;

 buf = evbuffer_new();
 evbuffer_add(buf, "1", 1);
 evbuffer_validate(buf);
 evbuffer_expand(buf, 2048);
 evbuffer_validate(buf);
 evbuffer_add(buf, "2", 1);
 evbuffer_validate(buf);
 evbuffer_add_printf(buf, "3");
 evbuffer_validate(buf);

 tt_assert(evbuffer_get_length(buf) == 3);
 str = (char *)evbuffer_pullup(buf, -1);
 tt_assert(str[0] == '1');
 tt_assert(str[1] == '2');
 tt_assert(str[2] == '3');
end:
 evbuffer_free(buf);
}
