
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAT_EV ;
 int assert (int) ;
 int idn ;
 int* q_events ;
 int qel ;
 int qen ;
 size_t qer ;
 int upd_stat_ (int,int) ;

void upd_stat (int id) {
  assert (-idn <= id && id <= idn && id != 0);

  if (qen > STAT_EV - 5) {
    upd_stat_ (q_events[qel++], -1);
    qen--;
    if (qel == STAT_EV) {
      qel = 0;
    }
  }

  q_events[qer] = id;
  upd_stat_ (q_events[qer++], +1);
  qen++;
  if (qer == STAT_EV) {
    qer = 0;
  }
}
