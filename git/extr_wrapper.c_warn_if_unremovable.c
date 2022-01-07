
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int errno ;
 int warning_errno (char*,char const*,char const*) ;

__attribute__((used)) static int warn_if_unremovable(const char *op, const char *file, int rc)
{
 int err;
 if (!rc || errno == ENOENT)
  return 0;
 err = errno;
 warning_errno("unable to %s '%s'", op, file);
 errno = err;
 return rc;
}
