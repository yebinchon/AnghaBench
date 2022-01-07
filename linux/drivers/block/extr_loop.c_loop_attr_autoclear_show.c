
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_flags; } ;
typedef int ssize_t ;


 int LO_FLAGS_AUTOCLEAR ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t loop_attr_autoclear_show(struct loop_device *lo, char *buf)
{
 int autoclear = (lo->lo_flags & LO_FLAGS_AUTOCLEAR);

 return sprintf(buf, "%s\n", autoclear ? "1" : "0");
}
