
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_time_t ;
typedef int git_signature ;


 int git_signature_free (int *) ;
 int git_signature_new (int **,char const*,char const*,int ,int) ;

__attribute__((used)) static int try_build_signature(const char *name, const char *email, git_time_t time, int offset)
{
 git_signature *sign;
 int error = 0;

 if ((error = git_signature_new(&sign, name, email, time, offset)) < 0)
  return error;

 git_signature_free((git_signature *)sign);

 return error;
}
