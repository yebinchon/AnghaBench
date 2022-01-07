
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_cmt_channel {int ioctrl; TYPE_2__* cmt; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int (* write_control ) (int ,int ,int ) ;} ;


 int CMCSR ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static inline void sh_cmt_write_cmcsr(struct sh_cmt_channel *ch, u32 value)
{
 ch->cmt->info->write_control(ch->ioctrl, CMCSR, value);
}
