
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
struct io_pump {scalar_t__ error; } ;


 int ALLOC_ARRAY (struct pollfd*,int) ;
 scalar_t__ errno ;
 int free (struct pollfd*) ;
 scalar_t__ pump_io_round (struct io_pump*,int,struct pollfd*) ;

__attribute__((used)) static int pump_io(struct io_pump *slots, int nr)
{
 struct pollfd *pfd;
 int i;

 for (i = 0; i < nr; i++)
  slots[i].error = 0;

 ALLOC_ARRAY(pfd, nr);
 while (pump_io_round(slots, nr, pfd))
  ;
 free(pfd);


 for (i = 0; i < nr; i++) {
  if (slots[i].error) {
   errno = slots[i].error;
   return -1;
  }
 }
 return 0;
}
