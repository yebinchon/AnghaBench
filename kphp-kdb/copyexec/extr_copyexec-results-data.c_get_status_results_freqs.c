
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_freqs (unsigned long long,int,int ) ;
 int result_as_status_result ;

char *get_status_results_freqs (unsigned long long volume_id, int transaction_id) {
  return get_freqs (volume_id, transaction_id, result_as_status_result);
}
