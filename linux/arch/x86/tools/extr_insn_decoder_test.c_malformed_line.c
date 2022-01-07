
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,int,char const*) ;
 char* prog ;
 int stderr ;

__attribute__((used)) static void malformed_line(const char *line, int line_nr)
{
 fprintf(stderr, "%s: error: malformed line %d:\n%s",
  prog, line_nr, line);
 exit(3);
}
