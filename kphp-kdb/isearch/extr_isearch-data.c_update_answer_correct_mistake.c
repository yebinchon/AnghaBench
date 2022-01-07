
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ data ;


 int A ;
 int B ;
 int black_list_check (scalar_t__) ;
 int cur_id ;
 int diff ;
 int get_id_by_hash (long long) ;
 scalar_t__ lowest_rate ;
 int merge (TYPE_1__) ;
 scalar_t__* names ;
 scalar_t__ names_buff ;
 scalar_t__* ratings ;

void update_answer_correct_mistake (long long h, int _diff, int _A, int _B) {
  int id = get_id_by_hash (h);
  if (id != 0 && id != cur_id && ratings[id] > lowest_rate && !black_list_check (names_buff + names[id])) {
    diff = _diff;
    A = _A;
    B = _B;
    data temp = {id};
    merge (temp);
  }
}
