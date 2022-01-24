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
typedef  int /*<<< orphan*/  userpair_t ;
struct username_index {int dummy; } ;
typedef  scalar_t__ hash_t ;
struct TYPE_5__ {int user_id; scalar_t__ hash; int users; int* offset; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int Dc ; 
 int MAX_PAIRS ; 
 int MAX_USERS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 TYPE_1__* P ; 
 int Pc ; 
 TYPE_1__ U ; 
 int /*<<< orphan*/  USERNAME_HASH_INDEX_MAGIC ; 
 void* UU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* progname ; 
 int FUNC8 (scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int verbose ; 
 int FUNC10 (int,TYPE_1__*,int) ; 

int FUNC11 (int argc, char *argv[]) {
  int i, r;
  hash_t p = 0;
  progname = argv[0];
  while ((i = FUNC3 (argc, argv, "hv")) != -1) {
    switch (i) {
    case 'v':
      verbose = 1;
      break;
    case 'h':
      FUNC9();
      return 2;
    }
  }
  if (argc <= optind) {
    FUNC9();
    return 2;
  }

  P = FUNC4 (MAX_PAIRS * sizeof (userpair_t));
  UU = FUNC4 (sizeof (struct username_index));
  FUNC0 (P && UU);

  while (optind < argc) {
    fd = FUNC6 (argv[optind], O_RDONLY);
    if (fd < 0) {
      FUNC2 (stderr, "%s: cannot open() %s: %m\n", progname, argv[optind]);
      optind++;
      continue;
    }
    r = (MAX_PAIRS - Pc) * sizeof(userpair_t);
    i = FUNC8 (fd, P + Pc, r);
    if (i < 0) {
      FUNC2 (stderr, "%s: error reading %s: %m\n", progname, argv[optind]);
      return 1;
    }
    if (i == r) {
      FUNC2 (stderr, "%s: error reading %s: hash space exhausted (%d entries)\n", progname, argv[optind], MAX_PAIRS);
      return 1;
    }
    Pc += i / sizeof(userpair_t);    
    FUNC1 (fd);
    optind++;
  }

  FUNC5(0, Pc-1);

  for (i = 0; i < Pc; i++) {
    int j = P[i].user_id;
    hash_t h = P[i].hash;
    FUNC0 (j < MAX_USERS-3);
    while (U.users <= j) {
      U.offset[U.users++] = Dc;
      p = 0;
    }
    if (h != p) {
      ((hash_t *) P)[Dc++] = h;
      p = h;
    }
  }
  U.offset[U.users++] = Dc;
  if (U.users & 1) { U.offset[U.users++] = Dc; }

  U.magic = USERNAME_HASH_INDEX_MAGIC;
  r = 8 + 4 * U.users;
  FUNC0 (FUNC10 (1, &U, r) == r);
  r = Dc * 8;
  FUNC0 (FUNC10 (1, P, r) == r);

  if (verbose) {
    FUNC7();
  }
                                      
  return 0;
}