
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int tx_vote; int rx_vote; unsigned int vote_off_ms; unsigned int vote_on_ms; scalar_t__ vote_last_jif; int votes_off; int votes_on; int rx_votes_off; int tx_votes_off; int rx_votes_on; int tx_votes_on; } ;
struct hci_uart {int tty; struct qca_data* priv; } ;


 int BT_DBG (char*,char*,char*) ;
 int BT_ERR (char*) ;





 int __serial_clock_off (int ) ;
 int __serial_clock_on (int ) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;

__attribute__((used)) static void serial_clock_vote(unsigned long vote, struct hci_uart *hu)
{
 struct qca_data *qca = hu->priv;
 unsigned int diff;

 bool old_vote = (qca->tx_vote | qca->rx_vote);
 bool new_vote;

 switch (vote) {
 case 128:
  diff = jiffies_to_msecs(jiffies - qca->vote_last_jif);

  if (old_vote)
   qca->vote_off_ms += diff;
  else
   qca->vote_on_ms += diff;
  return;

 case 129:
  qca->tx_vote = 1;
  qca->tx_votes_on++;
  new_vote = 1;
  break;

 case 131:
  qca->rx_vote = 1;
  qca->rx_votes_on++;
  new_vote = 1;
  break;

 case 130:
  qca->tx_vote = 0;
  qca->tx_votes_off++;
  new_vote = qca->rx_vote | qca->tx_vote;
  break;

 case 132:
  qca->rx_vote = 0;
  qca->rx_votes_off++;
  new_vote = qca->rx_vote | qca->tx_vote;
  break;

 default:
  BT_ERR("Voting irregularity");
  return;
 }

 if (new_vote != old_vote) {
  if (new_vote)
   __serial_clock_on(hu->tty);
  else
   __serial_clock_off(hu->tty);

  BT_DBG("Vote serial clock %s(%s)", new_vote ? "true" : "false",
         vote ? "true" : "false");

  diff = jiffies_to_msecs(jiffies - qca->vote_last_jif);

  if (new_vote) {
   qca->votes_on++;
   qca->vote_off_ms += diff;
  } else {
   qca->votes_off++;
   qca->vote_on_ms += diff;
  }
  qca->vote_last_jif = jiffies;
 }
}
