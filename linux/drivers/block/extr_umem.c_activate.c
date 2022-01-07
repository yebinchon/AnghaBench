
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardinfo {int Active; size_t Ready; TYPE_1__* mm_pages; } ;
struct TYPE_2__ {scalar_t__ cnt; } ;


 scalar_t__ add_bio (struct cardinfo*) ;
 int mm_start_io (struct cardinfo*) ;

__attribute__((used)) static void activate(struct cardinfo *card)
{






 do {
  while (add_bio(card))
   ;

  if (card->Active == -1 &&
      card->mm_pages[card->Ready].cnt > 0) {
   card->Active = card->Ready;
   card->Ready = 1-card->Ready;
   mm_start_io(card);
  }

 } while (card->Active == -1 && add_bio(card));
}
