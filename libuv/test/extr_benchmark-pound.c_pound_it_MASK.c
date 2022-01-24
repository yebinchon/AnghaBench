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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  (* setup_fn ) (int,void*) ;
typedef  int /*<<< orphan*/  make_connect_fn ;
typedef  int (* connect_fn ) (int,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 double NANOSEC ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 double closed_streams ; 
 int conns_failed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int,double,int) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(int concurrency,
                    const char* type,
                    setup_fn do_setup,
                    connect_fn do_connect,
                    make_connect_fn make_connect,
                    void* arg) {
  double secs;
  int r;
  uint64_t start_time; /* in ns */
  uint64_t end_time;

  loop = FUNC4();

  FUNC8(loop);
  start = FUNC6(loop);

  /* Run benchmark for at least five seconds. */
  start_time = FUNC5();

  do_setup(concurrency, arg);

  r = do_connect(concurrency, make_connect, arg);
  FUNC0(!r);

  FUNC7(loop, UV_RUN_DEFAULT);

  end_time = FUNC5();

  /* Number of fractional seconds it took to run the benchmark. */
  secs = (double)(end_time - start_time) / NANOSEC;

  FUNC3(stderr, "%s-conn-pound-%d: %.0f accepts/s (%d failed)\n",
          type,
          concurrency,
          closed_streams / secs,
          conns_failed);
  FUNC2(stderr);

  FUNC1();
  return 0;
}