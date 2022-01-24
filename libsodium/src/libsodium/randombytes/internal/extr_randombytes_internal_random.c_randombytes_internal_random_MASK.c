#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {size_t rnd32_outleft; int /*<<< orphan*/ * rnd32; int /*<<< orphan*/  nonce; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char*,unsigned long long,unsigned char*,int /*<<< orphan*/ ) ; 
 int crypto_stream_chacha20_NONCEBYTES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ stream ; 

__attribute__((used)) static uint32_t
FUNC8(void)
{
    uint32_t val;
    int      ret;

    FUNC0(sizeof stream.rnd32 >= (sizeof stream.key) + (sizeof val));
    FUNC0(((sizeof stream.rnd32) - (sizeof stream.key))
                    % sizeof val == (size_t) 0U);
    if (stream.rnd32_outleft <= (size_t) 0U) {
        FUNC5();
        FUNC0(sizeof stream.nonce == crypto_stream_chacha20_NONCEBYTES);
        ret = FUNC2((unsigned char *) stream.rnd32,
                                     (unsigned long long) sizeof stream.rnd32,
                                     (unsigned char *) &stream.nonce,
                                     stream.key);
        FUNC1(ret == 0);
        stream.rnd32_outleft = (sizeof stream.rnd32) - (sizeof stream.key);
        FUNC6();
        FUNC7(&stream.rnd32[stream.rnd32_outleft]);
        FUNC4(&stream.rnd32[stream.rnd32_outleft], 0, sizeof stream.key);
        stream.nonce++;
    }
    stream.rnd32_outleft -= sizeof val;
    FUNC3(&val, &stream.rnd32[stream.rnd32_outleft], sizeof val);
    FUNC4(&stream.rnd32[stream.rnd32_outleft], 0, sizeof val);

    return val;
}