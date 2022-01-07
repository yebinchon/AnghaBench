
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {scalar_t__ fd; TYPE_1__ filename; } ;


 int EINVAL ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int activate_tempfile (struct tempfile*) ;
 scalar_t__ adjust_shared_perm (int ) ;
 int deactivate_tempfile (struct tempfile*) ;
 int delete_tempfile (struct tempfile**) ;
 int errno ;
 int error (char*,int ) ;
 struct tempfile* new_tempfile () ;
 void* open (int ,int,int) ;
 int strbuf_add_absolute_path (TYPE_1__*,char const*) ;

struct tempfile *create_tempfile(const char *path)
{
 struct tempfile *tempfile = new_tempfile();

 strbuf_add_absolute_path(&tempfile->filename, path);
 tempfile->fd = open(tempfile->filename.buf,
       O_RDWR | O_CREAT | O_EXCL | O_CLOEXEC, 0666);
 if (O_CLOEXEC && tempfile->fd < 0 && errno == EINVAL)

  tempfile->fd = open(tempfile->filename.buf,
        O_RDWR | O_CREAT | O_EXCL, 0666);
 if (tempfile->fd < 0) {
  deactivate_tempfile(tempfile);
  return ((void*)0);
 }
 activate_tempfile(tempfile);
 if (adjust_shared_perm(tempfile->filename.buf)) {
  int save_errno = errno;
  error("cannot fix permission bits on %s", tempfile->filename.buf);
  delete_tempfile(&tempfile);
  errno = save_errno;
  return ((void*)0);
 }

 return tempfile;
}
