
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *filename_from_filepath (char *filepath)
{
  char *ptr = ((void*)0);

  if ((ptr = strrchr (filepath, '/')) != ((void*)0))
  {
    ptr++;
  }
  else if ((ptr = strrchr (filepath, '\\')) != ((void*)0))
  {
    ptr++;
  }
  else
  {
    ptr = filepath;
  }

  return ptr;
}
