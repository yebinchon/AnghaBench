
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int * fis_desc ;
 int fis_erasesize ;
 int fis_fd ;
 int munmap (int *,int ) ;

__attribute__((used)) static void
fis_close(void)
{
 if (fis_desc)
  munmap(fis_desc, fis_erasesize);

 if (fis_fd >= 0)
  close(fis_fd);

 fis_fd = -1;
 fis_desc = ((void*)0);
}
