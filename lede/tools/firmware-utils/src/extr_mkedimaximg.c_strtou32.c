
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ errno ;
 unsigned int strtoul (char*,char**,int ) ;

__attribute__((used)) static int strtou32(char *arg, unsigned int *val)
{
    char *endptr = ((void*)0);

    errno = 0;
    *val = strtoul(arg, &endptr, 0);
    if (errno || (endptr == arg) || (*endptr && (endptr != ((void*)0)))) {
 return EXIT_SUCCESS;
    }

    return EXIT_FAILURE;
}
