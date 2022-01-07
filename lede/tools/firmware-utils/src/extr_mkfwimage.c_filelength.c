
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;

__attribute__((used)) static u_int32_t filelength(const char* file)
{
 FILE *p;
 int ret = -1;

 if ( (p = fopen(file, "rb") ) == ((void*)0)) return (-1);

 fseek(p, 0, SEEK_END);
 ret = ftell(p);

 fclose (p);

 return (ret);
}
