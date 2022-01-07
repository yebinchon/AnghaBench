
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int loff_t ;


 int ps3flash_read (int *,void*,size_t,int *) ;

__attribute__((used)) static ssize_t ps3flash_kernel_read(void *buf, size_t count, loff_t pos)
{
 return ps3flash_read(((void*)0), buf, count, &pos);
}
