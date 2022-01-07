
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum scld_error { ____Placeholder_scld_error } scld_error ;


 int errno ;
 int free (char*) ;
 int safe_create_leading_directories (char*) ;
 char* xstrdup (char const*) ;

enum scld_error safe_create_leading_directories_const(const char *path)
{
 int save_errno;

 char *buf = xstrdup(path);
 enum scld_error result = safe_create_leading_directories(buf);

 save_errno = errno;
 free(buf);
 errno = save_errno;
 return result;
}
