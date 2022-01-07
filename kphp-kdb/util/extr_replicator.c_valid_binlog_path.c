
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int valid_binlog_path (char *path) {
  int i = 0;
  char *ptr = path;
  if (!*path || *path == '/' || *path == '.') {
    return 0;
  }
  while (*ptr) {
    if (!(*ptr == '/' || *ptr == '.' || *ptr == '-' || *ptr == '_' || (*ptr >= '0' && *ptr <= '9') || (*ptr >= 'a' && *ptr <= 'z') || (*ptr >= 'A' && *ptr <= 'Z'))) {
      return 0;
    }
    if (*ptr == '.' && (ptr[-1] == '.' || ptr[-1] == '/' || ptr[-1] == '_' || ptr[-1] == '-')) {
      return 0;
    }
    ptr++;
    i++;
  }
  if (i >= 64 || ptr[-1] == '.' || ptr[-1] == '/') {
    return 0;
  }
  return 1;
}
