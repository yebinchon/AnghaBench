
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 int diff ;
 int get_pref (long long) ;
 int merge (int ) ;
 int * suggs ;

void update_answer_suggestions (long long h, int _diff, int _A, int _B) {
  int sid = get_pref (h);
  if (sid) {
    diff = _diff;
    A = _A;
    B = _B;
    merge (suggs[sid]);
  }
}
