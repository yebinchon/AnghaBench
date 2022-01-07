
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSCK_ERROR ;
 int FSCK_IGNORE ;
 int FSCK_WARN ;
 int die (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_msg_type(const char *str)
{
 if (!strcmp(str, "error"))
  return FSCK_ERROR;
 else if (!strcmp(str, "warn"))
  return FSCK_WARN;
 else if (!strcmp(str, "ignore"))
  return FSCK_IGNORE;
 else
  die("Unknown fsck message type: '%s'", str);
}
