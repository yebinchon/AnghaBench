
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parse_msg_id (char const*) ;
 int parse_msg_type (char const*) ;

int is_valid_msg_type(const char *msg_id, const char *msg_type)
{
 if (parse_msg_id(msg_id) < 0)
  return 0;
 parse_msg_type(msg_type);
 return 1;
}
