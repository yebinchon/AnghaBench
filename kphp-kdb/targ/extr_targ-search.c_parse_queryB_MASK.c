#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct query_keyword_descr {int flags; int minv; int maxv; scalar_t__ q_type; int /*<<< orphan*/ * str; } ;
struct TYPE_6__ {int flags; int complexity; scalar_t__ type; int value2; int value; struct TYPE_6__* left; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */
 int MAXINT ; 
 int MININT ; 
 char* Qs ; 
 struct query_keyword_descr* QueryKW ; 
 TYPE_1__* FUNC0 (scalar_t__,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  q_and ; 
 scalar_t__ q_birthday_soon ; 
 scalar_t__ q_false ; 
 scalar_t__ q_true ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (char*,char**,int) ; 

query_t *FUNC6 (int mode) {
  query_t *A, *B;
  int len, value, c;
  struct query_keyword_descr *KW;
  if (FUNC3() == '(') {
    Qs++;
    A = FUNC1 (mode);
    if (!A) { return A; }
    while (*Qs == ' ' || *Qs == 9) { Qs++; }
    if (*Qs != ')') { return 0; }
    Qs++;
    return A;
  }
  if (*Qs == '!') {
    Qs++;
    A = FUNC6 (mode);
    if (!A) { return 0; }
    A->flags ^= 1;
    return A;
  }
  len = 0;
  if (*Qs >= 'a' && *Qs <= 'z') {
    while (len <= 32 && ((*Qs >= 'a' && *Qs <= 'z') || *Qs == '_' || (*Qs >= '0' && *Qs <= '9'))) {
      len++;
      Qs++;
    }
  }
  if (!len) { return 0; }
  Qs -= len;
  for (KW = QueryKW; KW->q_type; KW++) {
    if ((KW->flags & mode) && !FUNC4 (KW->str, Qs, len) && !KW->str[len]) {
      break;
    }
  }
  if (!KW->q_type) { return 0; }
  Qs += len;
  FUNC3();
  c = 0;

  if ((KW->flags & 7) == 7) {
    if (Qs[0] != '.') { return 0; }
    Qs++;
    B = FUNC6 (KW->minv);
    if (!B) { return 0; }
    A = FUNC0 (KW->q_type, 0);
    if (!A) { return 0; }
    A->left = B;
    A->complexity = B->complexity * 4;
    return A;
  }

  if ((KW->flags & 7) == 6) {
    if (Qs[0] != '.') { return 0; }
    Qs++;
    A = FUNC6 (KW->minv);
    if (!A) { return 0; }
    return A;
  }

  if ((KW->flags & 7) == 3) {
    if (*Qs != '=') { return 0; }
    Qs++;
    FUNC3();
    return FUNC2 (q_and, KW->q_type, KW->minv);
  }

  if ((KW->flags & 7) == 2) {
    A = FUNC0 (KW->q_type, 0);
    if (A->type != q_true && A->type != q_false) {
      A->complexity = 4;
    }
    return A;
  }

  if ((KW->flags & 7) == 1 && (Qs[0] == '>' || Qs[0] == '<') && Qs[1] == '=') {
    c = Qs[0];
    Qs++;
  }

  if (*Qs != '=') { 
    return 0; 
  }
  Qs++;
  FUNC3();

  char *Qs1;
  value = FUNC5 (Qs, &Qs1, 10);
  if (Qs1 == Qs) { 
    return 0; 
  }
  if ((KW->minv != -1 && value < KW->minv) || (KW->maxv != -1 && value > KW->maxv)) { 
    return 0; 
  }
  Qs = Qs1;
  A = FUNC0 (KW->q_type, value);
  if (!A) { return 0; }
  if ((KW->flags & 7) == 1) {
    A->flags |= 16;
    A->value2 = value;
    if (c == '<' && (value != KW->minv || value == -1)) { 
      A->value = /* KW->minv */ (KW->minv > 0 ? KW->minv : MININT); 
    }
    if (c == '>' && (value != KW->maxv || value == -1)) { 
      A->value2 = /* KW->maxv */ MAXINT; 
    }
    A->complexity = (A->value == MININT || A->value2 == MAXINT || A->value == A->value2 ? 1 : 2);
  } else {
    A->flags |= 8;
    A->complexity = (A->type == q_birthday_soon ? 4 : 1);
  }
  return A;
}