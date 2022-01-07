
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transaction_status { ____Placeholder_transaction_status } transaction_status ;


 int tot_cancelled ;
 int tot_decryption_failed ;
 int tot_failed ;
 int tot_ignored ;
 int tot_interrupted ;
 int tot_io_failed ;
 int tot_terminated ;
__attribute__((used)) static void incr_status_counter (enum transaction_status status, int delta) {
  switch (status) {
    case 131:
      tot_ignored += delta;
      break;
    case 130:
      tot_interrupted += delta;
      break;
    case 134:
      tot_cancelled += delta;
      break;
    case 128:
      tot_terminated += delta;
      break;
    case 132:
      tot_failed += delta;
      break;
    case 133:
      tot_decryption_failed += delta;
      break;
    case 129:
      tot_io_failed += delta;
      break;
    default:
      break;
  }
}
