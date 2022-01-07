
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dummy; } ;


 int CARD_CMD_SHUTDOWN ;
 unsigned int CARD_STATE_SHUTDOWN ;
 unsigned int CARD_STATE_SHUTTING_DOWN ;
 unsigned int CARD_STATE_STARTING ;
 int ETIMEDOUT ;
 long jiffies ;
 int msecs_to_jiffies (int) ;
 int rsxx_get_card_state (struct rsxx_cardinfo*,unsigned int*) ;
 int rsxx_issue_card_cmd (struct rsxx_cardinfo*,int ) ;

__attribute__((used)) static int card_shutdown(struct rsxx_cardinfo *card)
{
 unsigned int state;
 signed long start;
 const int timeout = msecs_to_jiffies(120000);
 int st;


 start = jiffies;
 do {
  st = rsxx_get_card_state(card, &state);
  if (st)
   return st;
 } while (state == CARD_STATE_STARTING &&
   (jiffies - start < timeout));

 if (state == CARD_STATE_STARTING)
  return -ETIMEDOUT;


 if ((state != CARD_STATE_SHUTTING_DOWN) &&
     (state != CARD_STATE_SHUTDOWN)) {
  st = rsxx_issue_card_cmd(card, CARD_CMD_SHUTDOWN);
  if (st)
   return st;
 }

 start = jiffies;
 do {
  st = rsxx_get_card_state(card, &state);
  if (st)
   return st;
 } while (state != CARD_STATE_SHUTDOWN &&
   (jiffies - start < timeout));

 if (state != CARD_STATE_SHUTDOWN)
  return -ETIMEDOUT;

 return 0;
}
