
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strcat (char*,int,char const*) ;
 char* strrchr (char*,char) ;

void COM_DefaultExtension( char *path, int maxSize, const char *extension )
{
 const char *dot = strrchr(path, '.'), *slash;
 if (dot && (!(slash = strrchr(path, '/')) || slash < dot))
  return;
 else
  Q_strcat(path, maxSize, extension);
}
