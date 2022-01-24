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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  const fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC2(
    fe25519*       r,
    const fe25519* x,
    fe25519*       t0,
    fe25519*       t1,
    fe25519*       t2    
)
{
    fe25519 *z11 = r; // store z11 in r (in order to save one temporary).
    fe25519 *z2_10_0 = t1;    
    fe25519 *z2_50_0 = t2;
    fe25519 *z2_100_0 = z2_10_0;

    uint8   i;

    {
         fe25519 *z2 = z2_50_0;

        /* 2 */ FUNC1(z2, x);
        /* 4 */ FUNC1(t0, z2);
        /* 8 */ FUNC1(t0, t0);
        /* 9 */ FUNC0(z2_10_0, t0, x);
        /* 11 */ FUNC0(z11, z2_10_0, z2);
        
        // z2 is dead.
    }
	
    /* 22 */ FUNC1(t0, z11);
    /* 2^5 - 2^0 = 31 */ FUNC0(z2_10_0, t0, z2_10_0);

    /* 2^6 - 2^1 */ FUNC1(t0, z2_10_0);
    /* 2^7 - 2^2 */ FUNC1(t0, t0);
    /* 2^8 - 2^3 */ FUNC1(t0, t0);
    /* 2^9 - 2^4 */ FUNC1(t0, t0);
    /* 2^10 - 2^5 */ FUNC1(t0, t0);
    /* 2^10 - 2^0 */ FUNC0(z2_10_0, t0, z2_10_0);

    /* 2^11 - 2^1 */ FUNC1(t0, z2_10_0);

    /* 2^20 - 2^10 */ for (i = 1; i < 10; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^20 - 2^0 */ FUNC0(z2_50_0, t0, z2_10_0);

    /* 2^21 - 2^1 */ FUNC1(t0, z2_50_0);

    /* 2^40 - 2^20 */ for (i = 1; i < 20; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^40 - 2^0 */ FUNC0(t0, t0, z2_50_0);

    /* 2^41 - 2^1 */ FUNC1(t0, t0);

    /* 2^50 - 2^10 */ for (i = 1; i < 10; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^50 - 2^0 */ FUNC0(z2_50_0, t0, z2_10_0);

    /* 2^51 - 2^1 */ FUNC1(t0, z2_50_0);

    /* 2^100 - 2^50 */ for (i = 1; i < 50; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^100 - 2^0 */ FUNC0(z2_100_0, t0, z2_50_0);

    /* 2^101 - 2^1 */ FUNC1(t0, z2_100_0);

    /* 2^200 - 2^100 */ for (i = 1; i < 100; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^200 - 2^0 */ FUNC0(t0, t0, z2_100_0);

    /* 2^250 - 2^50 */ for (i = 0; i < 50; i ++)
    {
        FUNC1(t0, t0);
    }
    /* 2^250 - 2^0 */ FUNC0(t0, t0, z2_50_0);

    /* 2^255 - 2^5 */ for (i = 0; i < 5; i ++)
    {
         FUNC1(t0, t0);
    }
    /* 2^255 - 21 */ FUNC0(r, t0, z11);
}