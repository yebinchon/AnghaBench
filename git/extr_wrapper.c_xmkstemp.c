
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int origtemplate ;


 int PATH_MAX ;
 char* absolute_path (char*) ;
 int die_errno (char*,char const*) ;
 int errno ;
 int mkstemp (char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

int xmkstemp(char *filename_template)
{
 int fd;
 char origtemplate[PATH_MAX];
 strlcpy(origtemplate, filename_template, sizeof(origtemplate));

 fd = mkstemp(filename_template);
 if (fd < 0) {
  int saved_errno = errno;
  const char *nonrelative_template;

  if (strlen(filename_template) != strlen(origtemplate))
   filename_template = origtemplate;

  nonrelative_template = absolute_path(filename_template);
  errno = saved_errno;
  die_errno("Unable to create temporary file '%s'",
   nonrelative_template);
 }
 return fd;
}
