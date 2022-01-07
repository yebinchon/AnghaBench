
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_io {int wrerror; scalar_t__ output; } ;


 int ferr_write (char const*,size_t,scalar_t__,int *) ;

__attribute__((used)) static void rerere_io_putmem(const char *mem, size_t sz, struct rerere_io *io)
{
 if (io->output)
  ferr_write(mem, sz, io->output, &io->wrerror);
}
