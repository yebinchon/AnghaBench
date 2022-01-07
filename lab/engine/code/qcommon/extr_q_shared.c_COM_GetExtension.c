
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char *COM_GetExtension( const char *name )
{
 const char *dot = strrchr(name, '.'), *slash;
 if (dot && (!(slash = strrchr(name, '/')) || slash < dot))
  return dot + 1;
 else
  return "";
}
