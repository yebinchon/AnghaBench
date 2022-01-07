
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
valid_line (char *line)
{

  if ((line == ((void*)0)) || (*line == '\0'))
    return 1;

  if (*line == '#' || *line == '\n')
    return 1;

  return 0;
}
