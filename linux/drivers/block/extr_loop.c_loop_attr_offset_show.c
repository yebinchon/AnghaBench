
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_offset; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t loop_attr_offset_show(struct loop_device *lo, char *buf)
{
 return sprintf(buf, "%llu\n", (unsigned long long)lo->lo_offset);
}
