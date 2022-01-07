
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W_OK ;
 int access (char const*,int ) ;

bool hc_path_write (const char *path)
{
  if (access (path, W_OK) == -1) return 0;

  return 1;
}
