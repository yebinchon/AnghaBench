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
struct item {int mask; int rates_len; scalar_t__* rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static long long FUNC1 (const struct item *I) {
  if ( (I->mask & 0xc000) == 0xc000) {
    FUNC0 (I->rates_len >= 2);
    /* since hash stored in 14 (lowest dword) and in 15 (highest word),
       we doesn't need to call get_bitno function
    */
    return (((unsigned long long) I->rates[I->rates_len-1]) << 32) | ((unsigned int) I->rates[I->rates_len-2]);
  }
  FUNC0 ( ! (I->mask & 0xc000) );
  return 0LL;
}