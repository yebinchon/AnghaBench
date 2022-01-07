
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_foreach_bridge (int (*) (char const*,void*),void*) ;

int br_foreach_bridge(int (*iterator)(const char *, void *), void *arg)
{
 return new_foreach_bridge(iterator, arg);
}
