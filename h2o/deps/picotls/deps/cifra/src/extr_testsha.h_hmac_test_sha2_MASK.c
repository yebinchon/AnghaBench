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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  hashsz; } ;
typedef  TYPE_1__ cf_chash ;

/* Variables and functions */
 int CF_MAXHASH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC5(const cf_chash *hash,
                                  const char *long_key,
                                  const char *long_message)
{
  uint8_t sig[CF_MAXHASH];
  uint8_t key[131], message[152];

  /* Key: 0xaa * 131
   * Message: "Test Using Larger Than Block-Size Key - Hash Key First"
   */
  FUNC4(key, 0xaa, 131);
  FUNC3(message, "Test Using Larger Than Block-Size Key - Hash Key First", 54);
  FUNC1(key, 131, message, 54, sig, hash);
  FUNC0(FUNC2(sig, long_key, hash->hashsz) == 0);

  /* Key: 0xaa * 131
   * Message: "This is a test using a larger than block-size key and a larger than block-size data. The key needs to be hashed before being used by the HMAC algorithm."
   */
  FUNC4(key, 0xaa, 131);
  FUNC3(message, "This is a test using a larger than block-size key and a larger than block-size data. The key needs to be hashed before being used by the HMAC algorithm.", 152);
  FUNC1(key, 131, message, 152, sig, hash);
  FUNC0(FUNC2(sig, long_message, hash->hashsz) == 0);
}