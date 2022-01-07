
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ahead_behind; void* behind; void* ahead; void* gone; } ;


 void* _ (char*) ;
 TYPE_1__ msgs ;

void setup_ref_filter_porcelain_msg(void)
{
 msgs.gone = _("gone");
 msgs.ahead = _("ahead %d");
 msgs.behind = _("behind %d");
 msgs.ahead_behind = _("ahead %d, behind %d");
}
