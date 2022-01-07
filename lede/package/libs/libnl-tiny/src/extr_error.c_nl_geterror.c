
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLE_FAILURE ;
 int NLE_MAX ;
 int abs (int) ;
 char const** errmsg ;

const char *nl_geterror(int error)
{
 error = abs(error);

 if (error > NLE_MAX)
  error = NLE_FAILURE;

 return errmsg[error];
}
