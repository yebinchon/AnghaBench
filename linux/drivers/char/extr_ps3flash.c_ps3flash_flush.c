
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int fl_owner_t ;


 int ps3flash_dev ;
 int ps3flash_writeback (int ) ;

__attribute__((used)) static int ps3flash_flush(struct file *file, fl_owner_t id)
{
 return ps3flash_writeback(ps3flash_dev);
}
