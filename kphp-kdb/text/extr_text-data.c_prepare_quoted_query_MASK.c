#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int MAX_QUERY_QUOTES ; 
 char** QStr ; 
 int Qq ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* dyn_cur ; 
 char* dyn_top ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void FUNC4 (const char *query) {
  char *ptr = (char *) query, *to = dyn_cur;
  int qc, qm = 0, len;

  Qq = 0;
  *to++ = 0;

  while (*ptr) {
    len = FUNC1 (ptr);
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

    len = FUNC2 (ptr);
    FUNC0 (len >= 0);

    if (len > 0) {
      FUNC3 (to, ptr, len);
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

  FUNC0 (to + 8 < dyn_top);
  FUNC0 (Qq >= 0 && Qq < MAX_QUERY_QUOTES);

  if (Qq) {
    dyn_cur = to + (- (long) to & 7);
  }
}