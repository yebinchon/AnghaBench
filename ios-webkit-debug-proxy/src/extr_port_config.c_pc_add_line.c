
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pc_t ;


 int pc_add (int ,char*,int,int) ;
 scalar_t__ pc_parse (int ,char const*,int,char**,int*,int*) ;

const char *pc_add_line(pc_t self, const char *line, size_t len) {
  const char *curr = line;
  const char *stop = line + len;
  while (curr < stop) {
    while (curr < stop && (*curr == ' ' || *curr == '\t')) {
      curr++;
    }
    const char *end = curr;
    while (end < stop &&
        *end && *end != '\n' && *end != '#' && *end != ',') {
      end++;
    }
    if (curr < end) {
      char *device_id;
      int min_port;
      int max_port;
      if (pc_parse(self, curr, end - curr,
            &device_id, &min_port, &max_port)) {
        return curr;
      }
      pc_add(self, device_id, min_port, max_port);
    }
    if (*end != ',') break;
    curr = end+1;
  }
  return ((void*)0);
}
