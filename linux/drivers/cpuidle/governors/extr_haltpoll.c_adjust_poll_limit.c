
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct cpuidle_device {unsigned int poll_limit_ns; } ;


 unsigned int NSEC_PER_USEC ;
 scalar_t__ guest_halt_poll_allow_shrink ;
 unsigned int guest_halt_poll_grow ;
 unsigned int guest_halt_poll_grow_start ;
 unsigned int guest_halt_poll_ns ;
 unsigned int guest_halt_poll_shrink ;

__attribute__((used)) static void adjust_poll_limit(struct cpuidle_device *dev, unsigned int block_us)
{
 unsigned int val;
 u64 block_ns = block_us*NSEC_PER_USEC;




 if (block_ns > dev->poll_limit_ns && block_ns <= guest_halt_poll_ns) {
  val = dev->poll_limit_ns * guest_halt_poll_grow;

  if (val < guest_halt_poll_grow_start)
   val = guest_halt_poll_grow_start;
  if (val > guest_halt_poll_ns)
   val = guest_halt_poll_ns;

  dev->poll_limit_ns = val;
 } else if (block_ns > guest_halt_poll_ns &&
     guest_halt_poll_allow_shrink) {
  unsigned int shrink = guest_halt_poll_shrink;

  val = dev->poll_limit_ns;
  if (shrink == 0)
   val = 0;
  else
   val /= shrink;
  dev->poll_limit_ns = val;
 }
}
