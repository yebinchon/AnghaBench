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
typedef  int /*<<< orphan*/  vector ;
struct TYPE_5__ {int n; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int A ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int engineN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* fcurr ; 
 scalar_t__* fd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/ * in_name ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 long long* l_len ; 
 int FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *,int) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/ * out_name ; 
 char* progname ; 
 TYPE_1__* FUNC12 (int) ; 
 long long* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int userN ; 
 char* username ; 
 TYPE_1__* v ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,long long*,int) ; 

int FUNC19 (int argc, char *argv[]) {
  int i;

  FUNC14 ();
  progname = argv[0];

  if (argc == 1) {
    FUNC15();
    return 2;
  }

  while ((i = FUNC6 (argc, argv, "hi:o:U:E:u:")) != -1) {
    switch (i) {
    case 'h':
      FUNC15 ();
      return 2;
    case 'i':
      in_name = optarg;
      break;
    case 'o':
      out_name = optarg;
      break;
    case 'U':
      userN = FUNC1 (optarg);
      break;
    case 'E':
      engineN = FUNC1 (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    }
  }
  if (argc != optind) {
    FUNC15();
    return 2;
  }

  if (FUNC2 (username) < 0) {
    FUNC5 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3 (1);
  }

  FUNC0 (userN >= 0);
  FUNC0 (engineN >= 0);

  FUNC7 (engineN + 1);

  int cnt = userN / engineN;
  v = FUNC12 (sizeof (vector) * (cnt + 2));
  FUNC0 (v != NULL);

  for (i = 0; i <= cnt; i++) {
    FUNC17 (&v[i]);
  }

  if (in_name != NULL) {
    FUNC11 (0, in_name, 0);
  } else {
    fd[0] = 0;
  }
  fcurr[0] = 0;

  FUNC11 (1, out_name, 2);

  long long fsz = -1;
  FUNC18 (fd[1], &fsz, sizeof (long long));

  while (FUNC9()) {
//    fprintf (stderr, "%d (%d;%d)\n", A, B / 2 , B & 1);
    int x = A / engineN;
    FUNC16 (&v[x], B);
  }


  int header_size = sizeof (int) * (cnt + 2) + sizeof (long long);
  fsz = header_size;
  l_len = FUNC13 (header_size);
  l_len[0] = cnt + 1;

  FUNC0 (FUNC8 (fd[1], header_size, SEEK_SET) == header_size);

  for (i = 0; i <= cnt; i++) {
  //  fprintf (stderr, "%d/%d\n", i, cnt);
    //qsort (v[i].mem, v[i].n, sizeof (int), cmp_int_inv);


    //l_len[i + 1] = LIST_ (encode) (v[i].mem, v[i].n, 2 * userN + 1, list_buff);

    //my_write (list_buff, l_len[i + 1]);
    //fsz += l_len[i + 1];

    l_len[i + 1] = v[i].n * sizeof (int);
    fsz += v[i].n * sizeof (int);
    FUNC10 (v[i].mem, v[i].n * sizeof (int));
  }
  FUNC4();

  FUNC0 (FUNC8 (fd[1], 0, SEEK_SET) == 0);
  FUNC18 (fd[1], &fsz, sizeof (long long));
  FUNC18 (fd[1], l_len, header_size - sizeof (long long));

  return 0;
}