
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_iter {int dummy; } ;
typedef int blk_status_t ;


 int T10_PI_TYPE1_PROTECTION ;
 int t10_pi_generate (struct blk_integrity_iter*,int ,int ) ;
 int t10_pi_ip_fn ;

__attribute__((used)) static blk_status_t t10_pi_type1_generate_ip(struct blk_integrity_iter *iter)
{
 return t10_pi_generate(iter, t10_pi_ip_fn, T10_PI_TYPE1_PROTECTION);
}
