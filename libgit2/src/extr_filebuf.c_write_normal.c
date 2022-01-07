
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest; scalar_t__ compute_digest; int last_error; int fd; } ;
typedef TYPE_1__ git_filebuf ;


 int BUFERR_WRITE ;
 int git_hash_update (int *,void*,size_t) ;
 scalar_t__ p_write (int ,void*,size_t) ;

__attribute__((used)) static int write_normal(git_filebuf *file, void *source, size_t len)
{
 if (len > 0) {
  if (p_write(file->fd, (void *)source, len) < 0) {
   file->last_error = BUFERR_WRITE;
   return -1;
  }

  if (file->compute_digest)
   git_hash_update(&file->digest, source, len);
 }

 return 0;
}
