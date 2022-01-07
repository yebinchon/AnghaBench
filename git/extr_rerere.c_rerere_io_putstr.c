
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_io {int wrerror; scalar_t__ output; } ;


 int ferr_puts (char const*,scalar_t__,int *) ;

__attribute__((used)) static void rerere_io_putstr(const char *str, struct rerere_io *io)
{
 if (io->output)
  ferr_puts(str, io->output, &io->wrerror);
}
