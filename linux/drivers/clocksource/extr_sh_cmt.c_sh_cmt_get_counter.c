
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sh_cmt_channel {TYPE_2__* cmt; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {scalar_t__ overflow_bit; } ;


 scalar_t__ sh_cmt_read_cmcnt (struct sh_cmt_channel*) ;
 scalar_t__ sh_cmt_read_cmcsr (struct sh_cmt_channel*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 sh_cmt_get_counter(struct sh_cmt_channel *ch, u32 *has_wrapped)
{
 u32 v1, v2, v3;
 u32 o1, o2;

 o1 = sh_cmt_read_cmcsr(ch) & ch->cmt->info->overflow_bit;


 do {
  o2 = o1;
  v1 = sh_cmt_read_cmcnt(ch);
  v2 = sh_cmt_read_cmcnt(ch);
  v3 = sh_cmt_read_cmcnt(ch);
  o1 = sh_cmt_read_cmcsr(ch) & ch->cmt->info->overflow_bit;
 } while (unlikely((o1 != o2) || (v1 > v2 && v1 < v3)
     || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

 *has_wrapped = o1;
 return v2;
}
