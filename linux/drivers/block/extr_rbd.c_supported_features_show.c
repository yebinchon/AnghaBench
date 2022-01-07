
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int RBD_FEATURES_SUPPORTED ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t supported_features_show(struct bus_type *bus, char *buf)
{
 return sprintf(buf, "0x%llx\n", RBD_FEATURES_SUPPORTED);
}
