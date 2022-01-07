
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_id; } ;
struct imessage_long {TYPE_1__ builtin_msg; } ;
struct imessage {int dummy; } ;


 int load_message (struct imessage*,int,int,int) ;
 int unpack_message_long (struct imessage_long*,int,int) ;

int load_message_long (struct imessage_long *M, int user_id, int local_id, int max_text_len, int fetch_filter) {
  int r = load_message ((struct imessage *) M, user_id, local_id, 1);
  if (r <= 0) {
    return r;
  }
  M->builtin_msg.user_id = user_id;
  unpack_message_long (M, max_text_len, fetch_filter);

  return r;
}
