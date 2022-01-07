
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int promisor_remote_find (int *) ;

int has_promisor_remote(void)
{
 return !!promisor_remote_find(((void*)0));
}
