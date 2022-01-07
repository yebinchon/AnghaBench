
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_cmt_channel {TYPE_2__* cmt; scalar_t__ iostart; } ;
struct TYPE_4__ {scalar_t__ mapbase; TYPE_1__* info; } ;
struct TYPE_3__ {int (* read_control ) (scalar_t__,int ) ;} ;


 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;

__attribute__((used)) static inline u32 sh_cmt_read_cmstr(struct sh_cmt_channel *ch)
{
 if (ch->iostart)
  return ch->cmt->info->read_control(ch->iostart, 0);
 else
  return ch->cmt->info->read_control(ch->cmt->mapbase, 0);
}
