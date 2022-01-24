#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sigbuf_small ;
struct TYPE_5__ {char const* base; int /*<<< orphan*/  off; } ;
typedef  TYPE_1__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
    EVP_PKEY *pkey;

    { /* create pkey */
        EC_KEY *eckey = FUNC2(NID_X9_62_prime256v1);
        FUNC1(eckey);
        pkey = FUNC4();
        FUNC5(pkey, eckey);
        FUNC0(eckey);
    }

    const char *message = "hello world";
    ptls_buffer_t sigbuf;
    uint8_t sigbuf_small[1024];

    FUNC11(&sigbuf, sigbuf_small, sizeof(sigbuf_small));
    FUNC9(FUNC8(pkey, &sigbuf, FUNC12(message, FUNC13(message)), FUNC7()) == 0);
    FUNC6(pkey);
    FUNC9(FUNC14(pkey, FUNC12(message, FUNC13(message)), FUNC12(sigbuf.base, sigbuf.off)) == 0);

    FUNC10(&sigbuf);
    FUNC3(pkey);
}