
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int order; int message_id; int hash; } ;
struct TYPE_3__ {int users; int* offset; } ;


 TYPE_2__* P ;
 size_t Pc ;
 TYPE_1__ UserIndex ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,int,int) ;
 int stderr ;
 int tot_bad_senders ;
 int tot_known_senders ;
 int tot_sender_hashes ;
 int ui_size ;
 int * ui_start ;

void process_text_sender (int user_id, int msg_id, int order) {
  int a, b;
  if (user_id <= 0 || user_id >= UserIndex.users-1) {
    tot_bad_senders++;
    return;
  }

  a = UserIndex.offset[user_id];
  b = UserIndex.offset[user_id+1];
  if (!(a >= 0 && a <= b && b <= ui_size)) {
    fprintf (stderr, "%d %d %d %d\n", user_id, a, b, ui_size);
  }
  assert (a >= 0 && a <= b && b <= ui_size);

  if (a == b) {
    tot_bad_senders++;
    return;
  }

  tot_known_senders++;
  tot_sender_hashes += b-a;

  while (a < b) {
    P[Pc].hash = ui_start[a++];

    P[Pc].order = order;
    P[Pc].message_id = msg_id;
    Pc++;
  }
}
