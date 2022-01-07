
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_3__ {int color; int keyword; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GIT_COLOR_AUTO ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ color_parse (char*,int ) ;
 int git_config_colorbool (char const*,char*) ;
 scalar_t__ git_config_get_string (char const*,char**) ;
 TYPE_1__* keywords ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int use_sideband_colors(void)
{
 static int use_sideband_colors_cached = -1;

 const char *key = "color.remote";
 struct strbuf sb = STRBUF_INIT;
 char *value;
 int i;

 if (use_sideband_colors_cached >= 0)
  return use_sideband_colors_cached;

 if (!git_config_get_string(key, &value)) {
  use_sideband_colors_cached = git_config_colorbool(key, value);
 } else if (!git_config_get_string("color.ui", &value)) {
  use_sideband_colors_cached = git_config_colorbool("color.ui", value);
 } else {
  use_sideband_colors_cached = GIT_COLOR_AUTO;
 }

 for (i = 0; i < ARRAY_SIZE(keywords); i++) {
  strbuf_reset(&sb);
  strbuf_addf(&sb, "%s.%s", key, keywords[i].keyword);
  if (git_config_get_string(sb.buf, &value))
   continue;
  if (color_parse(value, keywords[i].color))
   continue;
 }
 strbuf_release(&sb);
 return use_sideband_colors_cached;
}
