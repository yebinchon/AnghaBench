
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int s64 ;


 int kstrtos64 (char const*,int,int *) ;

__attribute__((used)) static ssize_t queue_var_store64(s64 *var, const char *page)
{
 int err;
 s64 v;

 err = kstrtos64(page, 10, &v);
 if (err < 0)
  return err;

 *var = v;
 return 0;
}
