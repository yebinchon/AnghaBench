
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; scalar_t__ value; } ;


 int SEND_PACK_PUSH_CERT_ALWAYS ;
 int SEND_PACK_PUSH_CERT_IF_ASKED ;
 int SEND_PACK_PUSH_CERT_NEVER ;
 int die (char*,int ,char const*) ;
 int git_parse_maybe_bool (char const*) ;
 int strcasecmp (char*,char const*) ;

int option_parse_push_signed(const struct option *opt,
        const char *arg, int unset)
{
 if (unset) {
  *(int *)(opt->value) = SEND_PACK_PUSH_CERT_NEVER;
  return 0;
 }
 switch (git_parse_maybe_bool(arg)) {
 case 1:
  *(int *)(opt->value) = SEND_PACK_PUSH_CERT_ALWAYS;
  return 0;
 case 0:
  *(int *)(opt->value) = SEND_PACK_PUSH_CERT_NEVER;
  return 0;
 }
 if (!strcasecmp("if-asked", arg)) {
  *(int *)(opt->value) = SEND_PACK_PUSH_CERT_IF_ASKED;
  return 0;
 }
 die("bad %s argument: %s", opt->long_name, arg);
}
