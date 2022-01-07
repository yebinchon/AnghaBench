
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;

FILE *Sys_FOpen(const char *ospath, const char *mode) {
 return fopen( ospath, mode );
}
