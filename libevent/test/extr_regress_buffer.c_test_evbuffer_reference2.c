
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int data ;


 int EVBUFFER_CHAIN_SIZE ;
 int MIN_BUFFER_SIZE ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_printf (struct evbuffer*,char*) ;
 int evbuffer_add_reference (struct evbuffer*,char*,int,int ,int *) ;
 int evbuffer_expand (struct evbuffer*,int) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 scalar_t__ evbuffer_pullup (struct evbuffer*,int) ;
 int evbuffer_validate (struct evbuffer*) ;
 int memset (char*,char,int) ;
 int no_cleanup ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_evbuffer_reference2(void *ptr)
{
 struct evbuffer *buf;
 static char data[4096];
 int data_len = MIN_BUFFER_SIZE-EVBUFFER_CHAIN_SIZE-10;
 char *str;
 int len;

 memset(data, 'P', sizeof(data));
 buf = evbuffer_new();
 evbuffer_add(buf, data, data_len);
 evbuffer_validate(buf);
 evbuffer_expand(buf, 100);
 evbuffer_validate(buf);
 evbuffer_add_reference(buf, "2", 1, no_cleanup, ((void*)0));
 evbuffer_validate(buf);
 evbuffer_add_printf(buf, "3");
 evbuffer_validate(buf);

 len = evbuffer_get_length(buf);
 tt_assert(len == data_len+2);
 str = (char *)evbuffer_pullup(buf, -1);
 tt_assert(str[len-3] == 'P');
 tt_assert(str[len-2] == '2');
 tt_assert(str[len-1] == '3');
end:
 evbuffer_free(buf);
}
