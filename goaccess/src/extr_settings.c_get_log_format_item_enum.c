
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int LOGTYPE ;
 int str2enum (int ,int ,char const*) ;

__attribute__((used)) static int
get_log_format_item_enum (const char *str)
{
  return str2enum (LOGTYPE, ARRAY_SIZE (LOGTYPE), str);
}
