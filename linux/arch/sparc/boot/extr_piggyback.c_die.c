
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int perror (char const*) ;

__attribute__((used)) static void die(const char *str)
{
 perror(str);
 exit(1);
}
