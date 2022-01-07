
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
    printf("Usage: windows [-h] [-b] [-f] \n");
    printf("Options:\n");
    printf("  -b create decorated windows\n");
    printf("  -f set focus on show off for all but first window\n");
    printf("  -h show this help\n");
}
