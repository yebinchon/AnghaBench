
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

__attribute__((used)) static void show_usage(void)
{
 printf("Usage:\n");
 printf("	resolveip -h\n");
 printf("	resolveip [-t timeout] hostname\n");
 printf("	resolveip -4 [-t timeout] hostname\n");
 printf("	resolveip -6 [-t timeout] hostname\n");
 exit(255);
}
