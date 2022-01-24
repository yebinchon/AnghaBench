#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bits; int ctx; int mlen; int tmp; scalar_t__ i; int /*<<< orphan*/ * m; int /*<<< orphan*/ * x; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ bbs_t ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (char const* const,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*) ; 

int FUNC19 (bbs_t *self, int bits, const char *const password_filename, int password_length) {
  if (bits < 256) {
    return -1;
  }
  self->bits = bits;
  self->ctx = FUNC0 ();
  FUNC15 (self->ctx);
  BIGNUM *three = FUNC9 ();
  FUNC15 (*three);
  FUNC15 (1 == FUNC12 (three, 3));
  BIGNUM *four = FUNC9 ();
  FUNC15 (*four);
  FUNC15 (1 == FUNC12 (four, 4));

  FUNC17 (password_filename, password_length);
  FUNC18 (2, "PRNG initialized.\n");
  self->bits = bits;
  FUNC18 (2, "p was generated.\n");
  BIGNUM *t = FUNC9 (), *p = NULL, *q = NULL;
  while (1) {
    BIGNUM *p1 = FUNC9 (), *q1 = FUNC9 ();
    FUNC15 (p1 && q1);
    p = FUNC6 (NULL, bits / 2, 0, four, three, NULL, NULL);
    FUNC15 (*p);
    FUNC13 (p1, p, FUNC14 ());
    q = FUNC6 (NULL, bits / 2, 0, four, three, NULL, NULL);
    FUNC15 (*q);
    FUNC13 (q1, q, FUNC14 ());

    FUNC11 (p1, p1);
    FUNC11 (q1, q1);
    FUNC5 (t, p1, q1, self->ctx);
    FUNC4 (p1);
    FUNC4 (q1);

    if (FUNC7 (t)) {
      break;
    }
    FUNC18 (2, "gcd ((p-1)/2, (q-1)/2) isn't 1.\n");
    FUNC4 (p);
    p = NULL;
    FUNC4 (q);
    q = NULL;
  }

  FUNC4 (three);
  FUNC4 (four);

  self->m = FUNC9 ();
  FUNC8 (self->m, p, q, self->ctx);
  FUNC3 (p);
  FUNC3 (q);
  self->r = FUNC1 ();
  FUNC15 (1 == FUNC2 (self->r, self->m, self->ctx));

  self->mlen = FUNC10 (self->m);
  self->tmp = FUNC16 ((self->mlen + 3) & -4, 1);
  FUNC15 (self->tmp);
  self->x = FUNC9 ();
  FUNC12 (self->x, 239);
  FUNC5 (t, self->x, self->m, self->ctx);
  FUNC15 (FUNC7 (t));
  FUNC4 (t);
  self->i = 0;

  return 0;
}