
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_property_read_string (int ,char*,char const**) ;
 int of_property_read_string_index (int ,char*,int ,char const**) ;
 int of_root ;

const char *get_system_type(void)
{
 const char *str;
 int err;

 err = of_property_read_string(of_root, "model", &str);
 if (!err)
  return str;

 err = of_property_read_string_index(of_root, "compatible", 0, &str);
 if (!err)
  return str;

 return "Unknown";
}
