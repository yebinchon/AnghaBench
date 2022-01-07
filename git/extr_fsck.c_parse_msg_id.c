
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int downcased; } ;


 int FSCK_MSG_MAX ;
 TYPE_1__* msg_id_info ;
 int prepare_msg_ids () ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int parse_msg_id(const char *text)
{
 int i;

 prepare_msg_ids();

 for (i = 0; i < FSCK_MSG_MAX; i++)
  if (!strcmp(text, msg_id_info[i].downcased))
   return i;

 return -1;
}
