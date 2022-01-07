
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetLastError (int) ;
 int errno ;

void git_error_system_set(int code)
{



 errno = code;

}
