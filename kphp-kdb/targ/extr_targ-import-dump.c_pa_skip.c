
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Pp ;

__attribute__((used)) static inline int pa_skip (void) {
  if ((Pp[0] == '^' || !Pp[0]) && Pp[1] == '*' && Pp[2] == '^') {
    Pp += 3;
    return 1;
  } else {
    return 0;
  }
}
