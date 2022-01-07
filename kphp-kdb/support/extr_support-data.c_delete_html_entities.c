
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check (char*,int) ;

void delete_html_entities (char *v) {
  int i;

  for (i = 0; v[i]; i++) {
    int ti = i;
    if (v[i + 1] == '#' && (v[i] == '&' || v[i] == '$')) {
      if (v[i + 2] != 'x') {
        for (i += 2; '0' <= v[i] && v[i] <= '9'; i++) {
        }
      } else {
        for (i += 3; ('0' <= v[i] && v[i] <= '9') || ('a' <= v[i] && v[i] <= 'f') || ('A' <= v[i] && v[i] <= 'F'); i++) {
        }
      }
      while (ti != i) {
        v[ti++] = ' ';
      }

      if (v[i] != ';') {
        i--;
      }
    } else if (v[i] == '%' && '0' <= v[i + 1] && v[i + 1] <= '7' &&
                            (('0' <= v[i + 2] && v[i + 2] <= '9') ||
                             ('a' <= v[i + 2] && v[i + 2] <= 'f') ||
                             ('A' <= v[i + 2] && v[i + 2] <= 'F'))) {
      i += 2;

      while (ti != i) {
        v[ti++] = ' ';
      }
    }
  }
  for (i = 0; v[i]; i++) {
    if (v[i] == '&' && v[i + 1] == '#') {
      if (!strncmp (v + i + 2, "&#amp;" + 2, 6 - 2)) { int end = i + 6; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#gt;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#lt;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#quot;" + 2, 7 - 2)) { int end = i + 7; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#33;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#34;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#36;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#39;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#60;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#62;" + 2, 5 - 2)) { int end = i + 5; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#8232;" + 2, 7 - 2)) { int end = i + 7; while (i < end) { v[i++] = ' '; } i--; };
      if (!strncmp (v + i + 2, "&#8233;" + 2, 7 - 2)) { int end = i + 7; while (i < end) { v[i++] = ' '; } i--; };
    }
  }


}
