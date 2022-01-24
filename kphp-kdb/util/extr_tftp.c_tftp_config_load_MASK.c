#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  data; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ tftp_file_t ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ TFTP_MAX_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 TYPE_1__* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char*,char**) ; 
 int tot_files ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14 (const char *config_filename) {
  char s[16384];
  FILE *f = FUNC4 (config_filename, "r");
  if (f == NULL) {
    FUNC7 ("fail to open config file '%s'. %m\n", config_filename);
    return -1;
  }
  int line = 0, res = 0, fd = -1;
  while (FUNC3 (s, sizeof (s), f) != NULL) {
    line++;
    int l = FUNC10 (s);
    if (l >= sizeof (s) - 1) {
      FUNC7 ("config line %d is too long\n", line);
      res--;
      break;
    }
    char *ptr;
    char *alias = FUNC11 (s, "\t\n ", &ptr);
    if (alias == NULL) {
      continue;
    }
    char *filename = FUNC11 (NULL, "\t\n ", &ptr);
    if (filename == NULL) {
      FUNC7 ("at the %d line of config filename for alias '%s' wasn't given.\n", line, alias);
      res--;
      break;
    }
    int old_tot_files = tot_files;
    tftp_file_t *F = FUNC6 (alias, 1);
    if (old_tot_files == tot_files) {
      FUNC7 ("%d line of config file contains duplicate record for alias '%s'.\n", line, alias);
      res--;
      break;
    }
    int fd = FUNC8 (filename, O_RDONLY);
    if (fd < 0) {
      FUNC7 ("fail to open file '%s' for alias '%s' (config line: %d). %m\n", filename, alias, line);
      res--;
      break;
    }
    struct stat st;
    if (FUNC5 (fd, &st) < 0) {
      FUNC7 ("fstat for file '%s' for alias '%s' failed (config line: %d). %m\n", filename, alias, line);
      res--;
      break;
    }
    F->size = st.st_size;
    if (F->size > TFTP_MAX_FILE_SIZE) {
      FUNC7 ("file '%s' for alias '%s' is too big (more than %lld bytes) (config line: %d). %m\n", filename, alias, F->size,  line);
      res--;
      break;
    }
    F->data = FUNC12 (F->size);
    F->filename = FUNC13 (filename);
    ssize_t bytes_read = FUNC9 (fd, F->data, F->size);
    if (bytes_read != F->size) {
      if (bytes_read < 0) {
        FUNC7 ("read from file '%s' for alias '%s' failed. %m\n", filename, alias);
        res--;
        break;
      } else {
        FUNC7 ("read only %lld bytes of expected %lld bytes from file '%s' for alias '%s'.\n", (long long) bytes_read, F->size, filename, alias);
        res--;
        break;
      }
    }
    FUNC0 (!FUNC1 (fd));
    fd = -1;
  }

  if (fd >= 0) {
    FUNC1 (fd);
    fd = -1;
  }

  if (f) {
    FUNC2 (f);
  }
  return res;
}