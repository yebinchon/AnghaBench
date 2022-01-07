
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int camelcased; } ;


 int FSCK_MSG_MAX ;
 int list_config_item (struct string_list*,char const*,int ) ;
 TYPE_1__* msg_id_info ;
 int prepare_msg_ids () ;

void list_config_fsck_msg_ids(struct string_list *list, const char *prefix)
{
 int i;

 prepare_msg_ids();

 for (i = 0; i < FSCK_MSG_MAX; i++)
  list_config_item(list, prefix, msg_id_info[i].camelcased);
}
