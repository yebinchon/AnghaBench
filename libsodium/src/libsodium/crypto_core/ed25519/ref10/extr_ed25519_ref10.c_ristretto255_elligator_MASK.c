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
struct TYPE_3__ {int /*<<< orphan*/  const T; int /*<<< orphan*/  const Z; int /*<<< orphan*/  const Y; int /*<<< orphan*/  const X; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  const fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  const d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const onemsqd ; 
 int FUNC8 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const sqdmone ; 
 int /*<<< orphan*/  const sqrtadm1 ; 
 int /*<<< orphan*/  const sqrtm1 ; 

__attribute__((used)) static void
FUNC9(ge25519_p3 *p, const fe25519 t)
{
    fe25519 c;
    fe25519 n;
    fe25519 one;
    fe25519 r;
    fe25519 rpd;
    fe25519 s, s_prime;
    fe25519 ss;
    fe25519 u, v;
    fe25519 w0, w1, w2, w3;
    int     wasnt_square;

    FUNC0(one);
    FUNC6(r, t);                  /* r = t^2 */
    FUNC4(r, sqrtm1, r);         /* r = sqrt(-1)*t^2 */
    FUNC2(u, r, one);            /* u = r+1 */
    FUNC4(u, u, onemsqd);        /* u = (r+1)*(1-d^2) */
    FUNC0(c);
    FUNC5(c, c);                 /* c = -1 */
    FUNC2(rpd, r, d);            /* rpd = r*d */
    FUNC4(v, r, d);              /* v = r*d */
    FUNC7(v, c, v);              /* v = c-r*d */
    FUNC4(v, v, rpd);            /* v = (c-r*d)*(r+d) */

    wasnt_square = 1 - FUNC8(s, u, v);
    FUNC4(s_prime, s, t);
    FUNC1(s_prime, s_prime);
    FUNC5(s_prime, s_prime);     /* s_prime = -|s*t| */
    FUNC3(s, s_prime, wasnt_square);
    FUNC3(c, r, wasnt_square);

    FUNC7(n, r, one);            /* n = r-1 */
    FUNC4(n, n, c);              /* n = c*(r-1) */
    FUNC4(n, n, sqdmone);        /* n = c*(r-1)*(d-1)^2 */
    FUNC7(n, n, v);              /* n =  c*(r-1)*(d-1)^2-v */

    FUNC2(w0, s, s);             /* w0 = 2s */
    FUNC4(w0, w0, v);            /* w0 = 2s*v */
    FUNC4(w1, n, sqrtadm1);      /* w1 = n*sqrt(ad-1) */
    FUNC6(ss, s);                 /* ss = s^2 */
    FUNC7(w2, one, ss);          /* w2 = 1-s^2 */
    FUNC2(w3, one, ss);          /* w3 = 1+s^2 */

    FUNC4(p->X, w0, w3);
    FUNC4(p->Y, w2, w1);
    FUNC4(p->Z, w1, w3);
    FUNC4(p->T, w0, w2);
}