
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ptr; } ;
typedef TYPE_1__ mmfile_t ;


 int close (int) ;
 int die_errno (char*) ;
 scalar_t__ write_in_full (int,int ,int ) ;
 int xmkstemp (char*) ;
 int xsnprintf (char*,size_t,char*) ;

__attribute__((used)) static void create_temp(mmfile_t *src, char *path, size_t len)
{
 int fd;

 xsnprintf(path, len, ".merge_file_XXXXXX");
 fd = xmkstemp(path);
 if (write_in_full(fd, src->ptr, src->size) < 0)
  die_errno("unable to write temp-file");
 close(fd);
}
