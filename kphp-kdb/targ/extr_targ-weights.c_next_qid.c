
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long lrand48 () ;

__attribute__((used)) static long long next_qid (void) {
  static long long qid = 0;
  while (!qid) {
    qid = (((long long) lrand48 ()) << 31) | lrand48 ();
  }
  qid++;
  if (qid < 0) {
    qid = 1;
  }
  return qid;
}
