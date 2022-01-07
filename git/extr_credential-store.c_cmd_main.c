
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; } ;
struct option {int dummy; } ;
struct credential {int dummy; } ;


 struct credential CREDENTIAL_INIT ;
 struct option OPT_END () ;
 struct option OPT_STRING (int ,char*,char**,char*,char*) ;
 struct string_list STRING_LIST_INIT_DUP ;
 scalar_t__ credential_read (struct credential*,int ) ;
 int die (char*) ;
 char* expand_user_path (char*,int ) ;
 int lookup_credential (struct string_list*,struct credential*) ;
 int parse_options (int,char const**,int *,struct option*,char const* const*,int ) ;
 int remove_credential (struct string_list*,struct credential*) ;
 int stdin ;
 int store_credential (struct string_list*,struct credential*) ;
 int strcmp (char const*,char*) ;
 int string_list_append (struct string_list*,char*) ;
 int string_list_append_nodup (struct string_list*,char*) ;
 int string_list_clear (struct string_list*,int ) ;
 int umask (int) ;
 int usage_with_options (char const* const*,struct option*) ;
 char* xdg_config_home (char*) ;

int cmd_main(int argc, const char **argv)
{
 const char * const usage[] = {
  "git credential-store [<options>] <action>",
  ((void*)0)
 };
 const char *op;
 struct credential c = CREDENTIAL_INIT;
 struct string_list fns = STRING_LIST_INIT_DUP;
 char *file = ((void*)0);
 struct option options[] = {
  OPT_STRING(0, "file", &file, "path",
      "fetch and store credentials in <path>"),
  OPT_END()
 };

 umask(077);

 argc = parse_options(argc, (const char **)argv, ((void*)0), options, usage, 0);
 if (argc != 1)
  usage_with_options(usage, options);
 op = argv[0];

 if (file) {
  string_list_append(&fns, file);
 } else {
  if ((file = expand_user_path("~/.git-credentials", 0)))
   string_list_append_nodup(&fns, file);
  file = xdg_config_home("credentials");
  if (file)
   string_list_append_nodup(&fns, file);
 }
 if (!fns.nr)
  die("unable to set up default path; use --file");

 if (credential_read(&c, stdin) < 0)
  die("unable to read credential");

 if (!strcmp(op, "get"))
  lookup_credential(&fns, &c);
 else if (!strcmp(op, "erase"))
  remove_credential(&fns, &c);
 else if (!strcmp(op, "store"))
  store_credential(&fns, &c);
 else
  ;

 string_list_clear(&fns, 0);
 return 0;
}
