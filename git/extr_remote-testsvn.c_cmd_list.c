
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,char*) ;
 char* remote_ref ;
 int stdout ;

__attribute__((used)) static int cmd_list(const char *line)
{
 printf("? %s\n\n", remote_ref);
 fflush(stdout);
 return 0;
}
