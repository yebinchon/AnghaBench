
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long last_qid ;
 long long lrand48 () ;

long long get_free_rpc_qid (long long qid) {
  last_qid += lrand48 () ;
  last_qid ++;
  return last_qid;
}
