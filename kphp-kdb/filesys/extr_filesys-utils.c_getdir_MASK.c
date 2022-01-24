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
struct dirent {char const* d_name; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  filename; int /*<<< orphan*/  st; } ;
typedef  TYPE_1__ file_t ;
typedef  int /*<<< orphan*/  dyn_mark_t ;
typedef  int /*<<< orphan*/  DIR ;
typedef  int /*<<< orphan*/  A ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmp_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 

int FUNC19 (const char *dirname, file_t **R, int sort, int hidden) {
  *R = NULL;
  char path[PATH_MAX];
  int l = FUNC10 (path, PATH_MAX, "%s/", dirname);
  if (l >= PATH_MAX - 1) { return 0; }
  int max_filename_length = PATH_MAX - 1 - l;
  int n = 0;
  file_t *head = NULL, *p;
  DIR *D = FUNC7 (dirname);
  if (D == NULL) {
    FUNC15 (1, "opendir (%s) returns NULL.\n", dirname);
    return 0;
  }
  while (1) {
    errno = 0;
    struct dirent *entry = FUNC9 (D);
    if (entry == NULL) {
      if (errno) {
        FUNC5 ("getdir (%s) failed. %m\n", dirname);
        FUNC4 (1);
      }
      break;
    }
    if (!FUNC11 (entry->d_name, ".") || !FUNC11 (entry->d_name, "..")) {
      continue;
    }

    if (!hidden && !FUNC14 (entry->d_name, ".", 1)) {
      FUNC15 (1, "Skip %s in %s.\n", entry->d_name, dirname);
      continue;
    }

    if (FUNC13 (entry->d_name) > max_filename_length) {
      FUNC15 (1, "Skipping too long filename (%s/%s).\n", dirname, entry->d_name);
      continue;
    }

    FUNC12 (path + l, entry->d_name);
    p = FUNC17 (sizeof (file_t));
    if (FUNC6 (path, &p->st)) {
      FUNC5 ("lstat (%s) fail. %m\n", path);
      FUNC16 (p, sizeof (file_t));
      continue;
    }
    p->filename = FUNC18 (entry->d_name);
    p->next = head;
    head = p;
    n++;
  }
  FUNC1 (D);
  if (!sort) {
    *R = head;
  } else if (n) {
    int i;
    dyn_mark_t s;
    FUNC2 (s);
    file_t **A = FUNC17 (n * sizeof (file_t *));
    p = head;
    for (i = n - 1; i >= 0; i--) {
      A[i] = p;
      p = p->next;
    }
    FUNC0 (p == NULL);
    FUNC8 (A, n, sizeof (A[0]), cmp_file);
    A[n-1]->next = NULL;
    for (i = 0; i < n - 1; i++) {
      A[i]->next = A[i+1];
    }
    *R = A[0];
    FUNC3 (s);
  }
  return n;
}