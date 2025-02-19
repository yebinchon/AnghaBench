
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openflags {int dummy; } ;


 int EACCES ;
 struct openflags OPENFLAGS () ;
 int R_OK ;
 int W_OK ;
 int access (char const*,int ) ;
 int errno ;
 struct openflags of_read (struct openflags) ;
 struct openflags of_write (struct openflags) ;

int os_file_mode(const char *file, struct openflags *mode_out)
{
 int err;

 *mode_out = OPENFLAGS();

 err = access(file, W_OK);
 if (err && (errno != EACCES))
  return -errno;
 else if (!err)
  *mode_out = of_write(*mode_out);

 err = access(file, R_OK);
 if (err && (errno != EACCES))
  return -errno;
 else if (!err)
  *mode_out = of_read(*mode_out);

 return err;
}
