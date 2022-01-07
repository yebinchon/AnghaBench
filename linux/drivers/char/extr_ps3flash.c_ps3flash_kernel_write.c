
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int ps3flash_dev ;
 scalar_t__ ps3flash_write (int *,void const*,size_t,int *) ;
 int ps3flash_writeback (int ) ;

__attribute__((used)) static ssize_t ps3flash_kernel_write(const void *buf, size_t count,
         loff_t pos)
{
 ssize_t res;
 int wb;

 res = ps3flash_write(((void*)0), buf, count, &pos);
 if (res < 0)
  return res;


 wb = ps3flash_writeback(ps3flash_dev);
 if (wb)
  return wb;

 return res;
}
