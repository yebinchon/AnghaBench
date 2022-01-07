
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {unsigned int color_moved_ws_handling; } ;


 unsigned int COLOR_MOVED_WS_ERROR ;
 int _ (char*) ;
 int error (int ,char const*) ;
 unsigned int parse_color_moved_ws (char const*) ;

__attribute__((used)) static int diff_opt_color_moved_ws(const struct option *opt,
       const char *arg, int unset)
{
 struct diff_options *options = opt->value;
 unsigned cm;

 if (unset) {
  options->color_moved_ws_handling = 0;
  return 0;
 }

 cm = parse_color_moved_ws(arg);
 if (cm & COLOR_MOVED_WS_ERROR)
  return error(_("invalid mode '%s' in --color-moved-ws"), arg);
 options->color_moved_ws_handling = cm;
 return 0;
}
