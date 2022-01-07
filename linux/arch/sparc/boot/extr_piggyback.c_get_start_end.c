
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die (char const*) ;
 scalar_t__ end_line (char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ start_line (char*) ;
 unsigned int strtoul (char*,int *,int) ;

__attribute__((used)) static int get_start_end(const char *filename, unsigned int *start,
                                               unsigned int *end)
{
 FILE *map;
 char buffer[1024];

 *start = 0;
 *end = 0;
 map = fopen(filename, "r");
 if (!map)
  die(filename);
 while (fgets(buffer, 1024, map)) {
  if (start_line(buffer))
   *start = strtoul(buffer, ((void*)0), 16);
  else if (end_line(buffer))
   *end = strtoul(buffer, ((void*)0), 16);
 }
 fclose (map);

 if (*start == 0 || *end == 0)
  return 0;

 return 1;
}
