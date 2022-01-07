
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ close (int) ;
 int die_errno (int ) ;
 scalar_t__ fsync_object_files ;
 int fsync_or_die (int,char*) ;

__attribute__((used)) static void close_loose_object(int fd)
{
 if (fsync_object_files)
  fsync_or_die(fd, "loose object file");
 if (close(fd) != 0)
  die_errno(_("error when closing loose object file"));
}
