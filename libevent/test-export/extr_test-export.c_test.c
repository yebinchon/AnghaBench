
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;

__attribute__((used)) static int
test()
{
 struct event_base *base = ((void*)0);

 base = event_base_new();
 if (base)
  event_base_free(base);

 return 0;
}
