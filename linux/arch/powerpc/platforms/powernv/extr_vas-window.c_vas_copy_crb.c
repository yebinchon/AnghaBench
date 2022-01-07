
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vas_copy (void*,int) ;

int vas_copy_crb(void *crb, int offset)
{
 return vas_copy(crb, offset);
}
