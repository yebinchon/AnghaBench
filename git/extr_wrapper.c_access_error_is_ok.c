
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ACCESS_EACCES_OK ;
 int EACCES ;
 scalar_t__ is_missing_file_error (int) ;

__attribute__((used)) static int access_error_is_ok(int err, unsigned flag)
{
 return (is_missing_file_error(err) ||
  ((flag & ACCESS_EACCES_OK) && err == EACCES));
}
