
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scn; int c; } ;
struct esca_entry {TYPE_1__ sigp_ctrl; int sda; } ;
struct TYPE_4__ {int scn; int c; } ;
struct bsca_entry {TYPE_2__ sigp_ctrl; int sda; } ;



__attribute__((used)) static inline void sca_copy_entry(struct esca_entry *d, struct bsca_entry *s)
{
 d->sda = s->sda;
 d->sigp_ctrl.c = s->sigp_ctrl.c;
 d->sigp_ctrl.scn = s->sigp_ctrl.scn;
}
