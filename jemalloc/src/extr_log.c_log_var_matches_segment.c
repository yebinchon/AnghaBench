
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int assert (int) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static bool
log_var_matches_segment(const char *segment_begin, const char *segment_end,
    const char *log_var_begin, const char *log_var_end) {
 assert(segment_begin <= segment_end);
 assert(log_var_begin < log_var_end);

 ptrdiff_t segment_len = segment_end - segment_begin;
 ptrdiff_t log_var_len = log_var_end - log_var_begin;

 if (segment_len == 1 && *segment_begin == '.') {
  return 1;
 }
        if (segment_len == log_var_len) {
  return strncmp(segment_begin, log_var_begin, segment_len) == 0;
 } else if (segment_len < log_var_len) {
  return strncmp(segment_begin, log_var_begin, segment_len) == 0
      && log_var_begin[segment_len] == '.';
        } else {
  return 0;
 }
}
