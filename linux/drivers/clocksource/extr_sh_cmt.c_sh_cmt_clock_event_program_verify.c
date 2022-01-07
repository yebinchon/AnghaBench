
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_cmt_channel {int next_match_value; int max_match_value; int match_value; int index; TYPE_2__* cmt; int flags; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int FLAG_REPROGRAM ;
 int FLAG_SKIPEVENT ;
 int dev_warn (int *,char*,int ) ;
 int sh_cmt_get_counter (struct sh_cmt_channel*,int*) ;
 int sh_cmt_write_cmcor (struct sh_cmt_channel*,int) ;

__attribute__((used)) static void sh_cmt_clock_event_program_verify(struct sh_cmt_channel *ch,
           int absolute)
{
 u32 value = ch->next_match_value;
 u32 new_match;
 u32 delay = 0;
 u32 now = 0;
 u32 has_wrapped;

 now = sh_cmt_get_counter(ch, &has_wrapped);
 ch->flags |= FLAG_REPROGRAM;

 if (has_wrapped) {




  ch->flags |= FLAG_SKIPEVENT;
  return;
 }

 if (absolute)
  now = 0;

 do {



  new_match = now + value + delay;
  if (new_match > ch->max_match_value)
   new_match = ch->max_match_value;

  sh_cmt_write_cmcor(ch, new_match);

  now = sh_cmt_get_counter(ch, &has_wrapped);
  if (has_wrapped && (new_match > ch->match_value)) {






   ch->flags |= FLAG_SKIPEVENT;
   break;
  }

  if (has_wrapped) {






   ch->match_value = new_match;
   break;
  }


  if (now < new_match) {





   ch->match_value = new_match;
   break;
  }







  if (delay)
   delay <<= 1;
  else
   delay = 1;

  if (!delay)
   dev_warn(&ch->cmt->pdev->dev, "ch%u: too long delay\n",
     ch->index);

 } while (delay);
}
