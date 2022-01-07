
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tmp; int ctx; int x; int r; int m; } ;
typedef TYPE_1__ bbs_t ;


 int BN_CTX_free (int ) ;
 int BN_RECP_CTX_free (int ) ;
 int BN_free (int ) ;
 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void bbs_free (bbs_t *self) {
  BN_free (self->m);
  BN_RECP_CTX_free (self->r);
  BN_free (self->x);
  BN_CTX_free (self->ctx);
  free (self->tmp);
  memset (self, 0, sizeof (*self));
}
