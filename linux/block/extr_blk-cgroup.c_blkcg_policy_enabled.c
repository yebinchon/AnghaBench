
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int blkcg_pols; } ;
struct blkcg_policy {int plid; } ;


 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static bool blkcg_policy_enabled(struct request_queue *q,
     const struct blkcg_policy *pol)
{
 return pol && test_bit(pol->plid, q->blkcg_pols);
}
