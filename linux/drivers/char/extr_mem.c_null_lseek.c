
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static loff_t null_lseek(struct file *file, loff_t offset, int orig)
{
 return file->f_pos = 0;
}
