
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int msg ;


 int xwrite (int,char const*,int) ;

__attribute__((used)) static void child_error_fn(const char *err, va_list params)
{
 const char msg[] = "error() should not be called in child\n";
 xwrite(2, msg, sizeof(msg) - 1);
}
