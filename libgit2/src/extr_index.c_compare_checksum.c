
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_8__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
struct TYPE_9__ {int checksum; int index_file_path; } ;
typedef TYPE_3__ git_index ;


 int GIT_ERROR_OS ;
 int GIT_OID_RAWSZ ;
 int O_RDONLY ;
 int SEEK_END ;
 int git_error_set (int ,char*) ;
 int git_oid_cmp (TYPE_2__*,int *) ;
 int p_close (int) ;
 scalar_t__ p_lseek (int,int,int ) ;
 int p_open (int ,int ) ;
 scalar_t__ p_read (int,TYPE_2__*,int ) ;

__attribute__((used)) static int compare_checksum(git_index *index)
{
 int fd;
 ssize_t bytes_read;
 git_oid checksum = {{ 0 }};

 if ((fd = p_open(index->index_file_path, O_RDONLY)) < 0)
  return fd;

 if (p_lseek(fd, -20, SEEK_END) < 0) {
  p_close(fd);
  git_error_set(GIT_ERROR_OS, "failed to seek to end of file");
  return -1;
 }

 bytes_read = p_read(fd, &checksum, GIT_OID_RAWSZ);
 p_close(fd);

 if (bytes_read < 0)
  return -1;

 return !!git_oid_cmp(&checksum, &index->checksum);
}
