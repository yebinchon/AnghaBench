
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fn ;
typedef int FILE ;


 int MAX_PATH ;
 int * fopen (char*,char const*) ;
 int strncat (char*,char const*,int) ;

__attribute__((used)) static FILE* myfopen(const char* filename, const char* mode)
{
 char* p;
 char fn[MAX_PATH];

 fn[0] = '\0';
 strncat(fn, filename, sizeof(fn)-1);

 for(p=fn;*p;++p) if(*p == '\\') *p = '/';

 return fopen(fn, mode);
}
