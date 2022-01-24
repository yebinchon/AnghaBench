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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  int /*<<< orphan*/  message ;
typedef  int /*<<< orphan*/  i3_shmlog_header ;
struct TYPE_2__ {int /*<<< orphan*/  condvar; int /*<<< orphan*/  wrap_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_1__* header ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ logbuffer ; 
 scalar_t__ logbuffer_size ; 
 scalar_t__ loglastwrap ; 
 scalar_t__ logwalk ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 () ; 
 size_t FUNC7 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const bool print, const char *fmt, va_list args) {
    /* Precisely one page to not consume too much memory but to hold enough
     * data to be useful. */
    static char message[4096];
    static struct tm result;
    static time_t t;
    static struct tm *tmp;
    static size_t len;

    /* Get current time */
    t = FUNC9(NULL);
    /* Convert time to local time (determined by the locale) */
    tmp = FUNC3(&t, &result);
    /* Generate time prefix */
    len = FUNC7(message, sizeof(message), "%x %X - ", tmp);

    /*
     * logbuffer  print
     * ----------------
     *  true      true   format message, save, print
     *  true      false  format message, save
     *  false     true   print message only
     *  false     false  INVALID, never called
     */
    if (!logbuffer) {
#ifdef DEBUG_TIMING
        struct timeval tv;
        gettimeofday(&tv, NULL);
        printf("%s%d.%d - ", message, tv.tv_sec, tv.tv_usec);
#else
        FUNC4("%s", message);
#endif
        FUNC10(fmt, args);
    } else {
        len += FUNC11(message + len, sizeof(message) - len, fmt, args);
        if (len >= sizeof(message)) {
            FUNC0(stderr, "BUG: single log message > 4k\n");

            /* vsnprintf returns the number of bytes that *would have been written*,
             * not the actual amount written. Thus, limit len to sizeof(message) to avoid
             * memory corruption and outputting garbage later.  */
            len = sizeof(message);

            /* Punch in a newline so the next log message is not dangling at
             * the end of the truncated message. */
            message[len - 2] = '\n';
        }

        /* If there is no space for the current message in the ringbuffer, we
         * need to wrap and write to the beginning again. */
        if (len >= (size_t)(logbuffer_size - (logwalk - logbuffer))) {
            loglastwrap = logwalk;
            logwalk = logbuffer + sizeof(i3_shmlog_header);
            FUNC6();
            header->wrap_count++;
        }

        /* Copy the buffer, move the write pointer to the byte after our
         * current message. */
        FUNC8(logwalk, message, len);
        logwalk += len;

        FUNC6();

#if !defined(__OpenBSD__)
        /* Wake up all (i3-dump-log) processes waiting for condvar. */
        FUNC5(&(header->condvar));
#endif

        if (print)
            FUNC1(message, len, 1, stdout);
    }
}