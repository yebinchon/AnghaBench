
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_sizelimit; int lo_offset; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int get_size (int ,int ,struct file*) ;

__attribute__((used)) static loff_t get_loop_size(struct loop_device *lo, struct file *file)
{
 return get_size(lo->lo_offset, lo->lo_sizelimit, file);
}
