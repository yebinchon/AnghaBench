
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_timing {void* udma; void* cycle; void* dmack_hold; void* recover; void* active; void* cyc8b; void* rec8b; void* act8b; void* setup; } ;


 void* EZ (void*,int) ;

__attribute__((used)) static void ata_timing_quantize(const struct ata_timing *t, struct ata_timing *q, int T, int UT)
{
 q->setup = EZ(t->setup, T);
 q->act8b = EZ(t->act8b, T);
 q->rec8b = EZ(t->rec8b, T);
 q->cyc8b = EZ(t->cyc8b, T);
 q->active = EZ(t->active, T);
 q->recover = EZ(t->recover, T);
 q->dmack_hold = EZ(t->dmack_hold, T);
 q->cycle = EZ(t->cycle, T);
 q->udma = EZ(t->udma, UT);
}
