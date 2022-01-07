
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int intel_pstate ;
 int * intel_pstate_driver ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t intel_pstate_show_status(char *buf)
{
 if (!intel_pstate_driver)
  return sprintf(buf, "off\n");

 return sprintf(buf, "%s\n", intel_pstate_driver == &intel_pstate ?
     "active" : "passive");
}
