
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 scalar_t__ git_env_bool (char*,int ) ;
 int repo_config_get_bool (int ,char*,int*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int the_repository ;

int upload_pack_advertise(struct repository *r,
     struct strbuf *value)
{
 if (value) {
  int allow_filter_value;
  int allow_ref_in_want;
  int allow_sideband_all_value;

  strbuf_addstr(value, "shallow");

  if (!repo_config_get_bool(the_repository,
      "uploadpack.allowfilter",
      &allow_filter_value) &&
      allow_filter_value)
   strbuf_addstr(value, " filter");

  if (!repo_config_get_bool(the_repository,
      "uploadpack.allowrefinwant",
      &allow_ref_in_want) &&
      allow_ref_in_want)
   strbuf_addstr(value, " ref-in-want");

  if (git_env_bool("GIT_TEST_SIDEBAND_ALL", 0) ||
      (!repo_config_get_bool(the_repository,
        "uploadpack.allowsidebandall",
        &allow_sideband_all_value) &&
       allow_sideband_all_value))
   strbuf_addstr(value, " sideband-all");
 }

 return 1;
}
