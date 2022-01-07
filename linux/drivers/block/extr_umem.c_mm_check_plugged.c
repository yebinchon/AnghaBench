
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardinfo {int dummy; } ;
struct blk_plug_cb {int dummy; } ;


 int blk_check_plugged (int ,struct cardinfo*,int) ;
 int mm_unplug ;

__attribute__((used)) static int mm_check_plugged(struct cardinfo *card)
{
 return !!blk_check_plugged(mm_unplug, card, sizeof(struct blk_plug_cb));
}
