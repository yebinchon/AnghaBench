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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static bool
FUNC2(const char *segment_begin, const char *segment_end,
    const char *log_var_begin, const char *log_var_end) {
	FUNC0(segment_begin <= segment_end);
	FUNC0(log_var_begin < log_var_end);

	ptrdiff_t segment_len = segment_end - segment_begin;
	ptrdiff_t log_var_len = log_var_end - log_var_begin;
	/* The special '.' segment matches everything. */
	if (segment_len == 1 && *segment_begin == '.') {
		return true;
	}
        if (segment_len == log_var_len) {
		return FUNC1(segment_begin, log_var_begin, segment_len) == 0;
	} else if (segment_len < log_var_len) {
		return FUNC1(segment_begin, log_var_begin, segment_len) == 0
		    && log_var_begin[segment_len] == '.';
        } else {
		return false;
	}
}