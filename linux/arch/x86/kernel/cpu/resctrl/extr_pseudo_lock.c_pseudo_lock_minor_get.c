
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 unsigned long MINORBITS ;
 int __clear_bit (unsigned long,int *) ;
 unsigned long find_first_bit (int *,unsigned long) ;
 int pseudo_lock_minor_avail ;

__attribute__((used)) static int pseudo_lock_minor_get(unsigned int *minor)
{
 unsigned long first_bit;

 first_bit = find_first_bit(&pseudo_lock_minor_avail, MINORBITS);

 if (first_bit == MINORBITS)
  return -ENOSPC;

 __clear_bit(first_bit, &pseudo_lock_minor_avail);
 *minor = first_bit;

 return 0;
}
