
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int access (char const*,int ) ;

bool hc_path_read (const char *path)
{
  if (access (path, R_OK) == -1) return 0;

  return 1;
}
