
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clcd_fb {TYPE_3__* panel; TYPE_2__* dev; } ;
struct TYPE_6__ {int connector; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int IMPD1_CTRL_DISP_ENABLE ;
 int IMPD1_CTRL_DISP_MASK ;
 int impd1_tweak_control (int ,int ,int) ;

__attribute__((used)) static void impd1fb_clcd_enable(struct clcd_fb *fb)
{
 impd1_tweak_control(fb->dev->dev.parent, IMPD1_CTRL_DISP_MASK,
   fb->panel->connector | IMPD1_CTRL_DISP_ENABLE);
}
