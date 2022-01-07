
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int modtime; int actime; } ;


 int time (int *) ;
 int utime (char const*,struct utimbuf*) ;

__attribute__((used)) static int freshen_file(const char *fn)
{
 struct utimbuf t;
 t.actime = t.modtime = time(((void*)0));
 return !utime(fn, &t);
}
