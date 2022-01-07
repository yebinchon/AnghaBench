
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_cmt_channel {TYPE_2__* cmt; scalar_t__ iostart; } ;
struct TYPE_4__ {scalar_t__ mapbase; TYPE_1__* info; } ;
struct TYPE_3__ {int (* write_control ) (scalar_t__,int ,int ) ;} ;


 int stub1 (scalar_t__,int ,int ) ;
 int stub2 (scalar_t__,int ,int ) ;

__attribute__((used)) static inline void sh_cmt_write_cmstr(struct sh_cmt_channel *ch, u32 value)
{
 if (ch->iostart)
  ch->cmt->info->write_control(ch->iostart, 0, value);
 else
  ch->cmt->info->write_control(ch->cmt->mapbase, 0, value);
}
