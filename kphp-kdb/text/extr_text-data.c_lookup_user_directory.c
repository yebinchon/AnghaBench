
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_user_list_entry {long long user_id; } ;
struct TYPE_2__ {int tot_users; } ;


 struct file_user_list_entry** FileUsers ;
 TYPE_1__ Header ;

struct file_user_list_entry *lookup_user_directory (long long user_id) {
  int i = -1, j = Header.tot_users, k;
  if (j <= 0) {
    return 0;
  }
  while (j - i > 1) {
    k = ((i + j) >> 1);
    if (user_id < FileUsers[k]->user_id) { j = k; } else { i = k; }
  }
  if (i >= 0 && FileUsers[i]->user_id == user_id) {
    return FileUsers[i];
  }
  return 0;
}
