
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int cl_must_pass (int ) ;
 int p_chmod (char const*,int) ;
 int p_stat (char const*,struct stat*) ;

bool cl_toggle_filemode(const char *filename)
{
 struct stat st1, st2;

 cl_must_pass(p_stat(filename, &st1));
 cl_must_pass(p_chmod(filename, st1.st_mode ^ 0100));
 cl_must_pass(p_stat(filename, &st2));

 return (st1.st_mode != st2.st_mode);
}
