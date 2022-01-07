
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int MAX_LFS_FILESIZE ;
 int generic_file_llseek_size (struct file*,int ,int,int ,int ) ;
 int nvram_size ;

__attribute__((used)) static loff_t nvram_misc_llseek(struct file *file, loff_t offset, int origin)
{
 return generic_file_llseek_size(file, offset, origin, MAX_LFS_FILESIZE,
     nvram_size);
}
