
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Pp ;

__attribute__((used)) static inline void pa_str (void) {
  while (*Pp && (Pp[0] != '^' || Pp[1] != '*' || Pp[2] != '^')
        && (Pp[0] != '%' || Pp[1] != '*' || Pp[2] != '%')) {
    if ((unsigned char) *Pp < ' ') { *Pp = ' '; }
    Pp++;
  }
  *Pp = 0;
}
