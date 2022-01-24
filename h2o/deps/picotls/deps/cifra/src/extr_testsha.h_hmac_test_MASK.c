#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  hashsz; } ;
typedef  TYPE_1__ cf_chash ;

/* Variables and functions */
 int CF_MAXHASH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int*,int,int*,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static inline void FUNC5(const cf_chash *hash,
                             const void *hi_there,
                             const void *jefe,
                             const void *aa_dd,
                             const void *counter_key)
{
  uint8_t sig[CF_MAXHASH];
  uint8_t key[25], message[50];

  /* Key: 0x0b * 20
   * Message: "Hi There"
   */
  FUNC4(key, 0x0b, 20);
  FUNC3(message, "Hi There", 8);
  FUNC1(key, 20, message, 8, sig, hash);

  FUNC0(FUNC2(sig, hi_there, hash->hashsz) == 0);

  /* Key: "Jefe"
   * Message: "what do ya want for nothing?"
   */
  FUNC3(key, "Jefe", 4);
  FUNC3(message, "what do ya want for nothing?", 28);
  FUNC1(key, 4, message, 28, sig, hash);
  FUNC0(FUNC2(sig, jefe, hash->hashsz) == 0);

  /* Key: 0xaa * 20
   * Message: 0xdd * 50
   */
  FUNC4(key, 0xaa, 20);
  FUNC4(message, 0xdd, 50);
  FUNC1(key, 20, message, 50, sig, hash);
  FUNC0(FUNC2(sig, aa_dd, hash->hashsz) == 0);

  /* Key: 0x01..0x19
   * Message: 0xcd * 50
   */
  for (uint8_t i = 1; i < 26; i++)
    key[i - 1] = i;
  FUNC4(message, 0xcd, 50);
  FUNC1(key, 25, message, 50, sig, hash);
  FUNC0(FUNC2(sig, counter_key, hash->hashsz) == 0);
}