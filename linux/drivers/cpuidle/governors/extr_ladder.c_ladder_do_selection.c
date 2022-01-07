
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ladder_device {TYPE_2__* states; } ;
struct cpuidle_device {int last_state_idx; } ;
struct TYPE_3__ {scalar_t__ demotion_count; scalar_t__ promotion_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;



__attribute__((used)) static inline void ladder_do_selection(struct cpuidle_device *dev,
           struct ladder_device *ldev,
           int old_idx, int new_idx)
{
 ldev->states[old_idx].stats.promotion_count = 0;
 ldev->states[old_idx].stats.demotion_count = 0;
 dev->last_state_idx = new_idx;
}
