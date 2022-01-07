
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int magnitude; scalar_t__ normalized; int n; } ;
typedef TYPE_1__ const secp256k1_fe ;


 int VERIFY_CHECK (int) ;
 int secp256k1_fe_sqr_inner (int ,int ) ;
 int secp256k1_fe_verify (TYPE_1__ const*) ;

__attribute__((used)) static void secp256k1_fe_sqr(secp256k1_fe *r, const secp256k1_fe *a) {




    secp256k1_fe_sqr_inner(r->n, a->n);





}
