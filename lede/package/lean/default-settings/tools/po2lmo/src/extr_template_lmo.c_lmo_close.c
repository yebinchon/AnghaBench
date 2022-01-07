
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int size; int * mmap; } ;
typedef TYPE_1__ lmo_archive_t ;


 int * MAP_FAILED ;
 int close (int ) ;
 int free (TYPE_1__*) ;
 int munmap (int *,int ) ;

void lmo_close(lmo_archive_t *ar)
{
 if (ar != ((void*)0))
 {
  if ((ar->mmap != ((void*)0)) && (ar->mmap != MAP_FAILED))
   munmap(ar->mmap, ar->size);

  close(ar->fd);
  free(ar);

  ar = ((void*)0);
 }
}
