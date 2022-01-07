
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_flags; } ;
typedef int ssize_t ;


 int LO_FLAGS_PARTSCAN ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t loop_attr_partscan_show(struct loop_device *lo, char *buf)
{
 int partscan = (lo->lo_flags & LO_FLAGS_PARTSCAN);

 return sprintf(buf, "%s\n", partscan ? "1" : "0");
}
