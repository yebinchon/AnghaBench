
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct throtl_data {int scale; int low_upgrade_time; int throtl_slice; } ;


 int jiffies ;
 scalar_t__ time_after_eq (int,int) ;

__attribute__((used)) static uint64_t throtl_adjusted_limit(uint64_t low, struct throtl_data *td)
{

 if (td->scale < 4096 && time_after_eq(jiffies,
     td->low_upgrade_time + td->scale * td->throtl_slice))
  td->scale = (jiffies - td->low_upgrade_time) / td->throtl_slice;

 return low + (low >> 1) * td->scale;
}
