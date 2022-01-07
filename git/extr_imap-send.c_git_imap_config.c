
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_ssl; int auth_method; int tunnel; int port; int pass; int user; int host; int folder; int use_html; int ssl_verify; } ;


 int git_config_get_bool (char*,int *) ;
 int git_config_get_int (char*,int *) ;
 int git_config_get_string (char*,int *) ;
 int git_config_get_value (char*,char const**) ;
 int git_die_config (char*,char*) ;
 TYPE_1__ server ;
 scalar_t__ starts_with (char const*,char*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void git_imap_config(void)
{
 const char *val = ((void*)0);

 git_config_get_bool("imap.sslverify", &server.ssl_verify);
 git_config_get_bool("imap.preformattedhtml", &server.use_html);
 git_config_get_string("imap.folder", &server.folder);

 if (!git_config_get_value("imap.host", &val)) {
  if (!val) {
   git_die_config("imap.host", "Missing value for 'imap.host'");
  } else {
   if (starts_with(val, "imap:"))
    val += 5;
   else if (starts_with(val, "imaps:")) {
    val += 6;
    server.use_ssl = 1;
   }
   if (starts_with(val, "//"))
    val += 2;
   server.host = xstrdup(val);
  }
 }

 git_config_get_string("imap.user", &server.user);
 git_config_get_string("imap.pass", &server.pass);
 git_config_get_int("imap.port", &server.port);
 git_config_get_string("imap.tunnel", &server.tunnel);
 git_config_get_string("imap.authmethod", &server.auth_method);
}
