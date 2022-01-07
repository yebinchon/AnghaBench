
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int new_lineno; int old_lineno; } ;
typedef TYPE_1__ git_xdiff_info ;
struct TYPE_6__ {char const* content; size_t content_len; int origin; int old_lineno; int new_lineno; scalar_t__ num_lines; } ;
typedef TYPE_2__ git_diff_line ;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,unsigned int) ;

__attribute__((used)) static int diff_update_lines(
 git_xdiff_info *info,
 git_diff_line *line,
 const char *content,
 size_t content_len)
{
 const char *scan = content, *scan_end = content + content_len;

 for (line->num_lines = 0; scan < scan_end; ++scan)
  if (*scan == '\n')
   ++line->num_lines;

 line->content = content;
 line->content_len = content_len;


 switch (line->origin) {
 case 133:
 case 128:
  line->old_lineno = -1;
  line->new_lineno = info->new_lineno;
  info->new_lineno += (int)line->num_lines;
  break;
 case 129:
 case 132:
  line->old_lineno = info->old_lineno;
  line->new_lineno = -1;
  info->old_lineno += (int)line->num_lines;
  break;
 case 131:
 case 130:
  line->old_lineno = info->old_lineno;
  line->new_lineno = info->new_lineno;
  info->old_lineno += (int)line->num_lines;
  info->new_lineno += (int)line->num_lines;
  break;
 default:
  git_error_set(GIT_ERROR_INVALID, "unknown diff line origin %02x",
   (unsigned int)line->origin);
  return -1;
 }

 return 0;
}
