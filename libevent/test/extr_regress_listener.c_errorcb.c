
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evconnlistener {int dummy; } ;


 int evconnlistener_disable (struct evconnlistener*) ;

__attribute__((used)) static void
errorcb(struct evconnlistener *lis, void *data_)
{
 int *data = data_;
 *data = 1000;
 evconnlistener_disable(lis);
}
