
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
typedef int nth_line_fn_t ;


 int SWAP (long,long) ;
 char* parse_loc (char const*,int ,void*,long,long,long*) ;
 char* parse_range_funcname (char const*,int ,void*,long,long,long*,long*,char const*,struct index_state*) ;

int parse_range_arg(const char *arg, nth_line_fn_t nth_line_cb,
      void *cb_data, long lines, long anchor,
      long *begin, long *end,
      const char *path, struct index_state *istate)
{
 *begin = *end = 0;

 if (anchor < 1)
  anchor = 1;
 if (anchor > lines)
  anchor = lines + 1;

 if (*arg == ':' || (*arg == '^' && *(arg + 1) == ':')) {
  arg = parse_range_funcname(arg, nth_line_cb, cb_data,
        lines, anchor, begin, end,
        path, istate);
  if (!arg || *arg)
   return -1;
  return 0;
 }

 arg = parse_loc(arg, nth_line_cb, cb_data, lines, -anchor, begin);

 if (*arg == ',')
  arg = parse_loc(arg + 1, nth_line_cb, cb_data, lines, *begin + 1, end);

 if (*arg)
  return -1;

 if (*begin && *end && *end < *begin) {
  SWAP(*end, *begin);
 }

 return 0;
}
