
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; scalar_t__ f_version; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;






__attribute__((used)) static loff_t adi_llseek(struct file *file, loff_t offset, int whence)
{
 loff_t ret = -EINVAL;

 switch (whence) {
 case 130:
 case 131:
 case 129:

  return -EINVAL;
 case 132:
  if (offset == 0)
   return file->f_pos;

  offset += file->f_pos;
  break;
 case 128:
  break;
 }

 if (offset != file->f_pos) {
  file->f_pos = offset;
  file->f_version = 0;
  ret = offset;
 }

 return ret;
}
