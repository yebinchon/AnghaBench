
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int odd; int evn; } ;
typedef TYPE_1__ cf_sha3_bi ;


 int rotl32 (int ,int) ;

__attribute__((used)) static inline void rotl_bi_1(cf_sha3_bi *out, const cf_sha3_bi *in)
{


  out->odd = rotl32(in->evn, 1);
  out->evn = in->odd;
}
