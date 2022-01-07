
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct TYPE_7__ {int rating; int read; void* mask; } ;
struct TYPE_6__ {scalar_t__ cputype; } ;
struct TYPE_5__ {int picbase; } ;


 void* CLOCKSOURCE_MASK (int) ;
 scalar_t__ CPU_XLR ;
 int PIC_CLOCK_TIMER ;
 int clocksource_register_hz (TYPE_3__*,int ) ;
 TYPE_3__ csrc_pic ;
 TYPE_2__ current_cpu_data ;
 TYPE_1__* nlm_get_node (int ) ;
 int nlm_get_pic_timer ;
 int nlm_get_pic_timer32 ;
 int nlm_pic_set_timer (int ,int ,unsigned long long,int ,int ) ;
 int pic_timer_freq () ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void nlm_init_pic_timer(void)
{
 uint64_t picbase = nlm_get_node(0)->picbase;
 u32 picfreq;

 nlm_pic_set_timer(picbase, PIC_CLOCK_TIMER, ~0ULL, 0, 0);
 if (current_cpu_data.cputype == CPU_XLR) {
  csrc_pic.mask = CLOCKSOURCE_MASK(32);
  csrc_pic.read = nlm_get_pic_timer32;
 } else {
  csrc_pic.mask = CLOCKSOURCE_MASK(64);
  csrc_pic.read = nlm_get_pic_timer;
 }
 csrc_pic.rating = 1000;
 picfreq = pic_timer_freq();
 clocksource_register_hz(&csrc_pic, picfreq);
 pr_info("PIC clock source added, frequency %d\n", picfreq);
}
