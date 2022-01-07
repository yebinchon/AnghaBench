
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_version { ____Placeholder_protocol_version } protocol_version ;


 int protocol_unknown_version ;
 int protocol_v0 ;
 int protocol_v1 ;
 int protocol_v2 ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum protocol_version parse_protocol_version(const char *value)
{
 if (!strcmp(value, "0"))
  return protocol_v0;
 else if (!strcmp(value, "1"))
  return protocol_v1;
 else if (!strcmp(value, "2"))
  return protocol_v2;
 else
  return protocol_unknown_version;
}
