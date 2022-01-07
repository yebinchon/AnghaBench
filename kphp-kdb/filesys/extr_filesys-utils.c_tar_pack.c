
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int gzFile ;
typedef int dyn_mark_t ;


 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int TAR_PACK_ERR_DUP ;
 int TAR_PACK_ERR_OPEN ;
 scalar_t__ Z_OK ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int dup (int) ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 scalar_t__ fsync (int) ;
 scalar_t__ gzclose (int ) ;
 int gzdopen (int,char*) ;
 int gzwrite (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int open (char const* const,int,int) ;
 int rec_tar_pack (int ,char const* const,char*,struct stat*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stat (char const* const,struct stat*) ;
 int strcpy (char*,char*) ;

int tar_pack (const char *const tar_filename, const char *const path, int compression_level) {
  char mode[8];
  if (compression_level >= 1 && compression_level <= 9) {
    sprintf (mode, "wb%d", compression_level);
  } else {
    strcpy (mode, "wb");
  }

  int fd = open (tar_filename, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
  if (fd < 0) { return TAR_PACK_ERR_OPEN; }
  int dd = dup (fd);
  if (dd < 0) {
    assert (close (fd) >= 0);
    return TAR_PACK_ERR_DUP;
  }

  gzFile f = gzdopen (dd, mode);
  struct stat b;
  if (stat (path, &b)) {
    return -1;
  }
  dyn_mark_t mrk;
  dyn_mark (mrk);
  int r = rec_tar_pack (f, path, "", &b);
  dyn_release (mrk);
  char buf[1024];
  memset (buf, 0 , 1024);
  assert (gzwrite (f, buf, 1024) == 1024);
  assert (gzclose (f) == Z_OK);
  assert (fsync (fd) >= 0);
  assert (close (fd) >= 0);
  return r;
}
