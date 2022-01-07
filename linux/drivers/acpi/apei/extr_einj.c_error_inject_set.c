
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int einj_error_inject (int ,int ,int ,int ,int ,int ) ;
 int error_flags ;
 int error_param1 ;
 int error_param2 ;
 int error_param3 ;
 int error_param4 ;
 int error_type ;

__attribute__((used)) static int error_inject_set(void *data, u64 val)
{
 if (!error_type)
  return -EINVAL;

 return einj_error_inject(error_type, error_flags, error_param1, error_param2,
  error_param3, error_param4);
}
