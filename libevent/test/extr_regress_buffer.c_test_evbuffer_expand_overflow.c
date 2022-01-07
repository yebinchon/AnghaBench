
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int EVBUFFER_CHAIN_MAX ;
 int EV_SIZE_MAX ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_expand (struct evbuffer*,int ) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_validate (struct evbuffer*) ;

__attribute__((used)) static void
test_evbuffer_expand_overflow(void *ptr)
{
 struct evbuffer *buf;

 buf = evbuffer_new();
 evbuffer_add(buf, "1", 1);
 evbuffer_expand(buf, EVBUFFER_CHAIN_MAX);
 evbuffer_validate(buf);

 evbuffer_expand(buf, EV_SIZE_MAX);
 evbuffer_validate(buf);

end:
 evbuffer_free(buf);
}
