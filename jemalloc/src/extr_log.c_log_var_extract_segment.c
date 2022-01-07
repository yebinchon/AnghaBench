
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
log_var_extract_segment(const char* segment_begin) {
 const char *end;
 for (end = segment_begin; *end != '\0' && *end != '|'; end++) {
 }
 return end;
}
