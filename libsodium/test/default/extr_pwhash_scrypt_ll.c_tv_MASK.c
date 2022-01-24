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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*,size_t,int const*,size_t,scalar_t__,scalar_t__,scalar_t__,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const char *passwd, const char *salt, uint64_t N, uint32_t r, uint32_t p)
{
    uint8_t data[64];
    size_t  i;
    size_t  olen       = (sizeof data / sizeof data[0]);
    size_t  passwd_len = FUNC2(passwd);
    size_t  salt_len   = FUNC2(salt);
    int     line_items  = 0;

    if (FUNC0(
            (const uint8_t *) passwd, passwd_len, (const uint8_t *) salt,
            salt_len, N, r, p, data, olen) != 0) {
        FUNC1("pwhash_scryptsalsa208sha256_ll([%s],[%s]) failure\n", passwd,
               salt);
        return;
    }

    FUNC1("scrypt('%s', '%s', %lu, %lu, %lu, %lu) =\n", passwd, salt,
           (unsigned long) N, (unsigned long) r, (unsigned long) p,
           (unsigned long) olen);

    for (i = 0; i < olen; i++) {
        FUNC1("%02x%c", data[i], line_items < 15 ? ' ' : '\n');
        line_items = line_items < 15 ? line_items + 1 : 0;
    }
}