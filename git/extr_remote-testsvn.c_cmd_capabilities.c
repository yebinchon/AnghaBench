
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,...) ;
 char* private_ref ;
 char* remote_ref ;
 int stdout ;

__attribute__((used)) static int cmd_capabilities(const char *line)
{
 printf("import\n");
 printf("bidi-import\n");
 printf("refspec %s:%s\n\n", remote_ref, private_ref);
 fflush(stdout);
 return 0;
}
