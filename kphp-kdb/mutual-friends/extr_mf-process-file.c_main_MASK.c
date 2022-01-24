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
typedef  int /*<<< orphan*/  vector ;
struct TYPE_4__ {int n; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int A ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int engineN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * friends_list ; 
 scalar_t__ friends_list_n ; 
 int* fsize ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 void* input_name ; 
 long long* l_len ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int max_user_events ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 void* optarg ; 
 int optind ; 
 void* output_name ; 
 char* progname ; 
 TYPE_1__* FUNC13 (int) ; 
 long long* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int uf ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int userN ; 
 char* username ; 
 TYPE_1__* v ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,long long*,int) ; 

int FUNC21 (int argc, char *argv[]) {
  int i;

  FUNC15();
  progname = argv[0];
  FUNC16 (FUNC17 (NULL));

  if (argc == 1) {
    FUNC18();
    return 2;
  }

  while ((i = FUNC7 (argc, argv, "i:o:hvU:E:u:T:m:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC18();
      return 2;
    case 'i':
      input_name = optarg;
      break;
    case 'o':
      output_name = optarg;
      break;
    case 'U':
      userN = FUNC1 (optarg);
      break;
    case 'E':
      engineN = FUNC1 (optarg);
      break;
    case 'T':
      FUNC0 (uf == -1);
      uf = FUNC1 (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'm':
      max_user_events = FUNC1 (optarg);
      FUNC0 (1 <= max_user_events && max_user_events <= 10000000);
      break;
    }
  }

  FUNC0 (uf >= 0);

  if (argc != optind) {
    FUNC18();
    return 2;
  }

  if (verbosity) {
    FUNC5 (stderr, "userN = %d, engineN = %d\n", userN, engineN);
  }

  if (FUNC2 (username) < 0) {
    FUNC5 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3 (1);
  }

  FUNC0 (0 < engineN);

  FUNC9 (2);

  FUNC8();

  int cnt = userN / engineN;
  v = FUNC13 (sizeof (vector) * (cnt + 2));

  for (i = 0; i <= cnt; i++) {
    FUNC19 (&v[i]);
  }

  FUNC0 (fsize[0] % 8 == 0);

  long long total = fsize[0] / 8;

  FUNC0 (total > 0);

  int prev = -1;
  while (total--) {
    FUNC11();
    if (A != prev) {
      prev = A;
      FUNC6 (friends_list, friends_list_n);
      friends_list_n = 0;
    }

    friends_list[friends_list_n++] = B;
  }
  FUNC6 (friends_list, friends_list_n);

  long long fsz = -1;
  FUNC20 (fd[1], &fsz, sizeof (long long));


  int header_size = sizeof (int) * (cnt + 2) + sizeof (long long);
  fsz = header_size;
  l_len = FUNC14 (header_size);
  l_len[0] = cnt + 1;

  FUNC0 (FUNC10 (fd[1], header_size, SEEK_SET) == header_size);

  for (i = 0; i <= cnt; i++) {
    l_len[i + 1] = v[i].n * sizeof (int);
    fsz += v[i].n * sizeof (int);
    FUNC12 (v[i].mem, v[i].n * sizeof (int));
  }
  FUNC4();

  FUNC0 (FUNC10 (fd[1], 0, SEEK_SET) == 0);
  FUNC20 (fd[1], &fsz, sizeof (long long));
  FUNC20 (fd[1], l_len, header_size - sizeof (long long));

  return 0;
}