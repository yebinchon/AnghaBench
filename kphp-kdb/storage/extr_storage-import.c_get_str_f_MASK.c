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
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 unsigned int HASH_STR_PRIME ; 
 TYPE_1__** HS ; 
 scalar_t__ MAX_STR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ tot_str ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static hash_entry_t *FUNC4 (const char *s, int force) {
  unsigned int h1 = 0, h2 = 0;
  const char *p = s;
  while (*p) {
    unsigned char c = *p++;
    h1 *= 131;
    h1 += c;
    h2 *= 239;
    h2 += c;
  }
  h1 %= HASH_STR_PRIME;
  h2 = 1 + (h2 % (HASH_STR_PRIME - 1));
  while (HS[h1]) {
    if (!FUNC1 (HS[h1]->key, s)) {
      return HS[h1];
    }
    if ( (h1 += h2) >= HASH_STR_PRIME) {
      h1 -= HASH_STR_PRIME;
    }
  }
  if (force) {
    tot_str++;
    FUNC0 (tot_str <= MAX_STR);
    HS[h1] = FUNC2 (sizeof (hash_entry_t));
    HS[h1]->key = FUNC3 (s);
    return HS[h1];
  }
  return NULL;
}