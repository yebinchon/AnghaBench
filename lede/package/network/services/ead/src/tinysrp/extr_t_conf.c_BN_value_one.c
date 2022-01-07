
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long* member_0; int member_1; int member_2; int member_3; } ;
typedef long BN_ULONG ;
typedef TYPE_1__ BIGNUM ;



BIGNUM *BN_value_one(void)
 {
 static BN_ULONG data_one=1L;
 static BIGNUM const_one={&data_one,1,1,0};

 return(&const_one);
 }
