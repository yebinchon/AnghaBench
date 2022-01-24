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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 unsigned int VARIANT_NO_PADDING_MASK ; 
 unsigned int VARIANT_URLSAFE_MASK ; 
 int FUNC0 (char const* const,size_t const,size_t*,char const* const,size_t) ; 
 unsigned int FUNC1 (char) ; 
 unsigned int FUNC2 (char) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/ * FUNC4 (char const* const,char const) ; 

int
FUNC5(unsigned char * const bin, const size_t bin_maxlen,
                  const char * const b64, const size_t b64_len,
                  const char * const ignore, size_t * const bin_len,
                  const char ** const b64_end, const int variant)
{
    size_t       acc_len = (size_t) 0;
    size_t       b64_pos = (size_t) 0;
    size_t       bin_pos = (size_t) 0;
    int          is_urlsafe;
    int          ret = 0;
    unsigned int acc = 0U;
    unsigned int d;
    char         c;

    FUNC3(variant);
    is_urlsafe = ((unsigned int) variant) & VARIANT_URLSAFE_MASK;
    while (b64_pos < b64_len) {
        c = b64[b64_pos];
        if (is_urlsafe) {
            d = FUNC2(c);
        } else {
            d = FUNC1(c);
        }
        if (d == 0xFF) {
            if (ignore != NULL && FUNC4(ignore, c) != NULL) {
                b64_pos++;
                continue;
            }
            break;
        }
        acc = (acc << 6) + d;
        acc_len += 6;
        if (acc_len >= 8) {
            acc_len -= 8;
            if (bin_pos >= bin_maxlen) {
                errno = ERANGE;
                ret = -1;
                break;
            }
            bin[bin_pos++] = (acc >> acc_len) & 0xFF;
        }
        b64_pos++;
    }
    if (acc_len > 4U || (acc & ((1U << acc_len) - 1U)) != 0U) {
        ret = -1;
    } else if (ret == 0 &&
               (((unsigned int) variant) & VARIANT_NO_PADDING_MASK) == 0U) {
        ret = FUNC0(b64, b64_len, &b64_pos, ignore,
                                              acc_len / 2);
    }
    if (ret != 0) {
        bin_pos = (size_t) 0U;
    } else if (ignore != NULL) {
        while (b64_pos < b64_len && FUNC4(ignore, b64[b64_pos]) != NULL) {
            b64_pos++;
        }
    }
    if (b64_end != NULL) {
        *b64_end = &b64[b64_pos];
    } else if (b64_pos != b64_len) {
        errno = EINVAL;
        ret = -1;
    }
    if (bin_len != NULL) {
        *bin_len = bin_pos;
    }
    return ret;
}