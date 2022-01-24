#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long long readto_off; long long const orig_file_size; long long const buffsize; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 scalar_t__ PREVSIZE ; 
 scalar_t__ io_buff ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,long long,char*,long long const) ; 

int FUNC7 (char *filename) {
  FUNC1 ();
  stream_t S;
  if (FUNC4 (&S, 0, filename, 2) < 0) {
    FUNC0 ("fail to open snapshot '%s'", filename);
    return -1;
  }
  while (!FUNC3 (&S)) {
    const long long off = S.readto_off;
    const long long remaining_bytes = S.orig_file_size - off;
    size_t s = remaining_bytes < S.buffsize ? remaining_bytes : S.buffsize;
    if (FUNC5 (&S, io_buff + PREVSIZE, s) < 0) {
      FUNC0 ("reading shapshot '%s' from offset %lld fail.", filename, off);
      FUNC2 (&S);
      return -1;
    }
    FUNC6 (2, "read %lld bytes from snapshot '%s', offset: %lld\n", (long long) s, filename, off);
  }
  FUNC2 (&S);
  return 0;
}