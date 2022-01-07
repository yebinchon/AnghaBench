
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int perror (char const*) ;

__attribute__((used)) static void pabort(const char *s)
{
 perror(s);
 abort();
}
