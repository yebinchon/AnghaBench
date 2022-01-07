
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner_id; int topic_id; int voting_id; } ;


 int* I ;
 size_t MAX_VOTINGS ;
 TYPE_1__* VD ;
 size_t VN ;
 int adj_rec ;
 int assert (int) ;
 size_t vt_id ;
 size_t vt_owner_id ;
 size_t vt_place_id ;
 size_t vt_place_type ;

void process_votings_row (void) {
  int owner_id = I[vt_owner_id], topic_id = I[vt_place_id], voting_id = I[vt_id];
  if (I[vt_place_type] != 2 || owner_id >= 0 || topic_id <= 0 || voting_id <= 0) {
    return;
  }
  assert (VN < MAX_VOTINGS);
  VD[VN].owner_id = owner_id;
  VD[VN].topic_id = topic_id;
  VD[VN].voting_id = voting_id;
  VN++;

  adj_rec++;
}
