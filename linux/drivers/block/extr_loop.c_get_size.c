
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int host; } ;


 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static loff_t get_size(loff_t offset, loff_t sizelimit, struct file *file)
{
 loff_t loopsize;


 loopsize = i_size_read(file->f_mapping->host);
 if (offset > 0)
  loopsize -= offset;

 if (loopsize < 0)
  return 0;

 if (sizelimit > 0 && sizelimit < loopsize)
  loopsize = sizelimit;




 return loopsize >> 9;
}
