
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_iter {int dummy; } ;
typedef int blk_status_t ;


 int T10_PI_TYPE1_PROTECTION ;
 int t10_pi_crc_fn ;
 int t10_pi_verify (struct blk_integrity_iter*,int ,int ) ;

__attribute__((used)) static blk_status_t t10_pi_type1_verify_crc(struct blk_integrity_iter *iter)
{
 return t10_pi_verify(iter, t10_pi_crc_fn, T10_PI_TYPE1_PROTECTION);
}
