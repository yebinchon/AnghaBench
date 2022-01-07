
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int smem_len; int smem_start; } ;
struct TYPE_4__ {TYPE_1__ fix; int screen_base; } ;
struct clcd_fb {TYPE_2__ fb; } ;


 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void impd1fb_clcd_remove(struct clcd_fb *fb)
{
 iounmap(fb->fb.screen_base);
 release_mem_region(fb->fb.fix.smem_start, fb->fb.fix.smem_len);
}
