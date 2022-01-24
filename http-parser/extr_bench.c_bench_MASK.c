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
struct timeval {float tv_usec; scalar_t__ tv_sec; } ;
struct http_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  data ; 
 size_t data_len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct http_parser*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct http_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC6(int iter_count, int silent) {
  struct http_parser parser;
  int i;
  int err;
  struct timeval start;
  struct timeval end;

  if (!silent) {
    err = FUNC3(&start, NULL);
    FUNC0(err == 0);
  }

  FUNC2(stderr, "req_len=%d\n", (int) data_len);
  for (i = 0; i < iter_count; i++) {
    size_t parsed;
    FUNC5(&parser, HTTP_REQUEST);

    parsed = FUNC4(&parser, &settings, data, data_len);
    FUNC0(parsed == data_len);
  }

  if (!silent) {
    double elapsed;
    double bw;
    double total;

    err = FUNC3(&end, NULL);
    FUNC0(err == 0);

    FUNC2(stdout, "Benchmark result:\n");

    elapsed = (double) (end.tv_sec - start.tv_sec) +
              (end.tv_usec - start.tv_usec) * 1e-6f;

    total = (double) iter_count * data_len;
    bw = (double) total / elapsed;

    FUNC2(stdout, "%.2f mb | %.2f mb/s | %.2f req/sec | %.2f s\n",
        (double) total / (1024 * 1024),
        bw / (1024 * 1024),
        (double) iter_count / elapsed,
        elapsed);

    FUNC1(stdout);
  }

  return 0;
}