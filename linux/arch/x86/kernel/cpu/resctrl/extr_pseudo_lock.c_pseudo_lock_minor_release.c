
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_bit (unsigned int,int *) ;
 int pseudo_lock_minor_avail ;

__attribute__((used)) static void pseudo_lock_minor_release(unsigned int minor)
{
 __set_bit(minor, &pseudo_lock_minor_avail);
}
