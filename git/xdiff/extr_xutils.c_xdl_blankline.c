
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long XDF_WHITESPACE_FLAGS ;
 scalar_t__ XDL_ISSPACE (char const) ;

int xdl_blankline(const char *line, long size, long flags)
{
 long i;

 if (!(flags & XDF_WHITESPACE_FLAGS))
  return (size <= 1);

 for (i = 0; i < size && XDL_ISSPACE(line[i]); i++)
  ;

 return (i == size);
}
