
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vfp_enable (int *) ;

__attribute__((used)) static int vfp_starting_cpu(unsigned int unused)
{
 vfp_enable(((void*)0));
 return 0;
}
