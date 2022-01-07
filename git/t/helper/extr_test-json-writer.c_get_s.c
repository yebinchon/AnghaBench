
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,int) ;
 char* strtok (int *,char*) ;

__attribute__((used)) static void get_s(int line_nr, char **s_in)
{
 *s_in = strtok(((void*)0), " ");
 if (!*s_in)
  die("line[%d]: expected: <s>", line_nr);
}
