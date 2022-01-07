
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ostm_device {scalar_t__ base; } ;


 scalar_t__ OSTM_TE ;
 scalar_t__ OSTM_TT ;
 int TE ;
 int TT ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void ostm_timer_stop(struct ostm_device *ostm)
{
 if (readb(ostm->base + OSTM_TE) & TE) {
  writeb(TT, ostm->base + OSTM_TT);






  while (readb(ostm->base + OSTM_TE) & TE)
   ;
 }
}
