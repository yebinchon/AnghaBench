
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_QUERY_QUOTES ;
 char** QStr ;
 int Qq ;
 int assert (int) ;
 char* dyn_cur ;
 char* dyn_top ;
 int get_notword (char*) ;
 int get_word (char*) ;
 int lc_str (char*,char*,int) ;

void prepare_quoted_query (const char *query) {
  char *ptr = (char *) query, *to = dyn_cur;
  int qc, qm = 0, len;

  Qq = 0;
  *to++ = 0;

  while (*ptr) {
    len = get_notword (ptr);
    if (len < 0) {
      break;
    }
    qc = 0;
    while (len > 0) {
      if (*ptr++ == '"') {
        qc++;
      }
      len--;
    }
    if (qc) {
      if (qm) {
        if (to[-1] != ' ') {
          *to++ = ' ';
        }
        if (!to[-2]) {
          --Qq;
        }
        *to++ = 0;
        qm = 0;
        qc--;
      }
      if ((qc & 1) && Qq < MAX_QUERY_QUOTES - 1) {
        QStr[Qq++] = to;
        *to++ = ' ';
        qm = 1;
      }
    } else if (qm) {
      if (to[-1] != ' ') {
        *to++ = ' ';
      }
    }

    len = get_word (ptr);
    assert (len >= 0);

    if (len > 0) {
      lc_str (to, ptr, len);
      to += len;
    }
    ptr += len;
  }

  if (qm) {
    if (to[-1] != ' ') {
      *to++ = ' ';
    }
    if (!to[-2]) {
      --Qq;
    }
    *to++ = 0;
  }

  assert (to + 8 < dyn_top);
  assert (Qq >= 0 && Qq < MAX_QUERY_QUOTES);

  if (Qq) {
    dyn_cur = to + (- (long) to & 7);
  }
}
