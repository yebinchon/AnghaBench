
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int q_info ;
struct TYPE_4__ {long long x; scalar_t__ y; } ;
typedef TYPE_1__ hmap_pair_ll_int ;
struct TYPE_5__ {int y; } ;


 scalar_t__ H_ADD ;
 long long H_MUL ;
 int STAT_ST ;
 int* dl_realloc (int*,int,int) ;
 int h_q ;
 TYPE_2__* hmap_ll_int_add (int *,TYPE_1__) ;
 int memset (int*,int ,int) ;
 int* q_entry ;
 int* q_rev ;
 int qn ;
 int qr ;

int add_q (int val) {
  long long h = val;
  h += H_ADD;
  h *= H_MUL;
  hmap_pair_ll_int tmp;
  tmp.x = h;
  tmp.y = 0;
  int *pid = &(hmap_ll_int_add (&h_q, tmp)->y);
  if (*pid == 0) {
    if (qn + 3 > qr) {
      int nqr = qr * 2 + 3;
      q_entry = dl_realloc (q_entry, sizeof (q_info) * (nqr + STAT_ST), sizeof (q_info) * (qr + STAT_ST));
      q_rev = dl_realloc (q_rev, sizeof (int) * nqr, sizeof (int) * qr);

      memset (q_entry + qr + STAT_ST, 0, sizeof (q_info) * (nqr - qr));
      memset (q_rev + qr, 0, sizeof (int) * (nqr - qr));

      qr = nqr;
    }

    *pid = ++qn;
    q_rev[qn] = val;

  }

  return *pid;
}
