
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*) ;
 int quote_c_style (char const*,int *,int ,int) ;
 int stdout ;

__attribute__((used)) static void ls_from_active_commit(const char *path)
{

 printf("ls \"");
 quote_c_style(path, ((void*)0), stdout, 1);
 printf("\"\n");
 fflush(stdout);
}
