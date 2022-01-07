
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TF_ACCOUNTS ;
 int TF_ACCTYPES ;
 int TF_NONE ;
 int strncmp (char*,char*,int) ;

int get_dump_format (char *str) {
  if (!strncmp (str, "acctypes", 8)) {
    return TF_ACCTYPES;
  }
  if (!strncmp (str, "account_types", 13)) {
    return TF_ACCTYPES;
  }
  if (!strncmp (str, "accounts", 8)) {
    return TF_ACCOUNTS;
  }

  return TF_NONE;
}
