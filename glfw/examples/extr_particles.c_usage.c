
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
    printf("Usage: particles [-bfhs]\n");
    printf("Options:\n");
    printf(" -f   Run in full screen\n");
    printf(" -h   Display this help\n");
    printf(" -s   Run program as single thread (default is to use two threads)\n");
    printf("\n");
    printf("Program runtime controls:\n");
    printf(" W    Toggle wireframe mode\n");
    printf(" Esc  Exit program\n");
}
