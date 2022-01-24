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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t,size_t*,size_t,size_t*,int,size_t*,size_t*,size_t) ; 
 scalar_t__ FUNC3 (size_t*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,size_t*) ; 

__attribute__((used)) static void FUNC6(size_t nkey, const void *expect_tag, size_t ntag)
{
  uint8_t C[22400];
  uint8_t K[32];
  uint8_t S[128] = { 0 };
  uint8_t N[12] = { 0 };
  size_t nC = 0;

  FUNC4(K, 0, sizeof K);
  K[nkey - 1] = ntag * 8;

  cf_aes_context aes;
  FUNC1(&aes, K, nkey);

  for (size_t i = 0; i < 128; i++)
  {
    /* N = num2str(3i+1, 96) */
    FUNC4(N, 0, sizeof N);
    FUNC5(3 * i + 1, N + 8);

    /* C = C || OCB-ENCRYPT(K, N, S, S)
     * nb. OCB-ENCRYPT(Key, Nonce, AAD, Plain) */
    FUNC2(&cf_aes, &aes,
                   S, i,        /* plain */
                   S, i,        /* aad */
                   N, sizeof N, /* nonce */
                   C + nC,      /* cipher out */
                   C + nC + i,  /* tag out */
                   ntag);
    nC += i + ntag;

    /* N = num2str(3i+2,96) */
    FUNC5(3 * i + 2, N + 8);

    /* C = C || OCB-ENCRYPT(K, N, <empty string>, S) */
    FUNC2(&cf_aes, &aes,
                   S, i,
                   NULL, 0,
                   N, sizeof N,
                   C + nC,
                   C + nC + i,
                   ntag);
    nC += i + ntag;

    /* N = num2str(3i+3,96) */
    FUNC5(3 * i + 3, N + 8);

    /* C = C || OCB-ENCRYPT(K, N, S, <empty string>) */
    FUNC2(&cf_aes, &aes,
                   NULL, 0,
                   S, i,
                   N, sizeof N,
                   NULL,
                   C + nC,
                   ntag);
    nC += ntag;
  }

  /* N = num2str(385, 96) */
  FUNC5(385, N + 8);

  /* Output : OCB-ENCRYPT(K, N, C, <empty string>) */
  uint8_t result[16];
  FUNC2(&cf_aes, &aes,
                 NULL, 0,
                 C, nC,
                 N, sizeof N,
                 NULL,
                 result, ntag);

  FUNC0(FUNC3(result, expect_tag, ntag) == 0);
}