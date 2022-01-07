
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int evbuffer_add_reference (struct evbuffer*,char*,int ,int *,int *) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_prepend (struct evbuffer*,char*,int) ;
 scalar_t__ evbuffer_pullup (struct evbuffer*,int) ;
 int evbuffer_validate (struct evbuffer*) ;
 int strncmp (char*,char*,int) ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_evbuffer_empty_reference_prepend(void *ptr)
{
 struct evbuffer *buf = ((void*)0);

 buf = evbuffer_new();
 tt_assert(buf);


 evbuffer_add_reference(buf, "", 0, ((void*)0), ((void*)0));
 evbuffer_validate(buf);
 evbuffer_prepend(buf, "foo", 3);

 evbuffer_validate(buf);
 tt_assert(!strncmp((char *)evbuffer_pullup(buf, -1), "foo", 3));
 evbuffer_validate(buf);

end:
 if (buf)
  evbuffer_free(buf);
}
