
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {unsigned long max_match_value; unsigned long next_match_value; int index; TYPE_2__* cmt; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_warn (int *,char*,int ) ;
 int sh_cmt_clock_event_program_verify (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static void __sh_cmt_set_next(struct sh_cmt_channel *ch, unsigned long delta)
{
 if (delta > ch->max_match_value)
  dev_warn(&ch->cmt->pdev->dev, "ch%u: delta out of range\n",
    ch->index);

 ch->next_match_value = delta;
 sh_cmt_clock_event_program_verify(ch, 0);
}
