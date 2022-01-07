
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_reference (struct evbuffer*,char*,int ,int *,int *) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_prepend_buffer (struct evbuffer*,struct evbuffer*) ;
 scalar_t__ evbuffer_pullup (struct evbuffer*,int) ;
 int evbuffer_validate (struct evbuffer*) ;
 int strncmp (char*,char*,int) ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_evbuffer_empty_reference_prepend_buffer(void *ptr)
{
 struct evbuffer *buf1 = ((void*)0), *buf2 = ((void*)0);

 buf1 = evbuffer_new();
 tt_assert(buf1);
 buf2 = evbuffer_new();
 tt_assert(buf2);


 evbuffer_add_reference(buf1, "", 0, ((void*)0), ((void*)0));
 evbuffer_validate(buf1);
 evbuffer_add(buf2, "foo", 3);
 evbuffer_validate(buf2);
 evbuffer_prepend_buffer(buf2, buf1);
 evbuffer_validate(buf2);

 tt_assert(!strncmp((char *)evbuffer_pullup(buf2, -1), "foo", 3));
 evbuffer_validate(buf2);

 tt_assert(!strncmp((char *)evbuffer_pullup(buf1, -1), "", 0));
 evbuffer_validate(buf2);

end:
 if (buf1)
  evbuffer_free(buf1);
 if (buf2)
  evbuffer_free(buf2);
}
