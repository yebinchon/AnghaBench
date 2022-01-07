
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * olpc_ofw_cif ;

bool olpc_ofw_present(void)
{
 return olpc_ofw_cif != ((void*)0);
}
