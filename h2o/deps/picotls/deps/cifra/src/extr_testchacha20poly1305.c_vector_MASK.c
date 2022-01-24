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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int*,int*,size_t,int*,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,size_t,int*,size_t,int*,int*) ; 
 scalar_t__ FUNC4 (int*,int*,size_t) ; 
 size_t FUNC5 (int*,int,char const*) ; 

__attribute__((used)) static void FUNC6(const char *keystr,
                   const char *noncestr,
                   const char *headerstr,
                   const char *plainstr,
                   const char *cipherstr,
                   const char *tagstr)
{
  /* inputs */
  uint8_t K[32], N[12], H[12], A[16];
  uint8_t C[265], P[265];

  FUNC5(K, sizeof K, keystr);
  FUNC5(N, sizeof N, noncestr);
  size_t headerlen = FUNC5(H, sizeof H, headerstr);
  size_t plainlen  = FUNC5(P, sizeof P, plainstr);
  size_t cipherlen = FUNC5(C, sizeof C, cipherstr);
  FUNC5(A, sizeof A, tagstr);

  FUNC1(cipherlen == plainlen);

  /* working data */
  uint8_t out[265], ourtag[16];

  /* check encryption works. */
  FUNC3(K, N,
                              H, headerlen,
                              P, plainlen,
                              out, ourtag);

  FUNC0(FUNC4(out, C, cipherlen) == 0);
  FUNC0(FUNC4(ourtag, A, sizeof A) == 0);

  /* proper decryption */
  FUNC0(0 == FUNC2(K, N,
                                              H, headerlen,
                                              C, cipherlen,
                                              A, out));
  FUNC0(0 == FUNC4(out, P, plainlen));

  /* failure decryption */
  C[0] ^= 0xff;

  FUNC0(1 == FUNC2(K, N,
                                              H, headerlen,
                                              C, cipherlen,
                                              A, out));
}