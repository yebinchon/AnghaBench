
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 char const** opal_errors ;

__attribute__((used)) static const char *opal_error_to_human(int error)
{
 if (error == 0x3f)
  return "Failed";

 if (error >= ARRAY_SIZE(opal_errors) || error < 0)
  return "Unknown Error";

 return opal_errors[error];
}
