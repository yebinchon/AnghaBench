
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_MOVED_BLOCKS ;
 int COLOR_MOVED_DEFAULT ;
 int COLOR_MOVED_NO ;
 int COLOR_MOVED_PLAIN ;
 int COLOR_MOVED_ZEBRA ;
 int COLOR_MOVED_ZEBRA_DIM ;
 int _ (char*) ;
 int error (int ) ;
 int git_parse_maybe_bool (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_color_moved(const char *arg)
{
 switch (git_parse_maybe_bool(arg)) {
 case 0:
  return COLOR_MOVED_NO;
 case 1:
  return COLOR_MOVED_DEFAULT;
 default:
  break;
 }

 if (!strcmp(arg, "no"))
  return COLOR_MOVED_NO;
 else if (!strcmp(arg, "plain"))
  return COLOR_MOVED_PLAIN;
 else if (!strcmp(arg, "blocks"))
  return COLOR_MOVED_BLOCKS;
 else if (!strcmp(arg, "zebra"))
  return COLOR_MOVED_ZEBRA;
 else if (!strcmp(arg, "default"))
  return COLOR_MOVED_DEFAULT;
 else if (!strcmp(arg, "dimmed-zebra"))
  return COLOR_MOVED_ZEBRA_DIM;
 else if (!strcmp(arg, "dimmed_zebra"))
  return COLOR_MOVED_ZEBRA_DIM;
 else
  return error(_("color moved setting must be one of 'no', 'default', 'blocks', 'zebra', 'dimmed-zebra', 'plain'"));
}
