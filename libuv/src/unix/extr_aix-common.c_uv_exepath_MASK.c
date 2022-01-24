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
typedef  int /*<<< orphan*/  trypath ;
struct procsinfo {int /*<<< orphan*/  pi_pid; } ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int PATH_MAX ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (struct procsinfo*,int,char*,int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 size_t FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 

int FUNC13(char* buffer, size_t* size) {
  int res;
  char args[PATH_MAX];
  char abspath[PATH_MAX];
  size_t abspath_size;
  struct procsinfo pi;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  pi.pi_pid = FUNC4();
  res = FUNC2(&pi, sizeof(pi), args, sizeof(args));
  if (res < 0)
    return UV_EINVAL;

  /*
   * Possibilities for args:
   * i) an absolute path such as: /home/user/myprojects/nodejs/node
   * ii) a relative path such as: ./node or ../myprojects/nodejs/node
   * iii) a bare filename such as "node", after exporting PATH variable
   *     to its location.
   */

  /* Case i) and ii) absolute or relative paths */
  if (FUNC8(args, '/') != NULL) {
    if (FUNC6(args, abspath) != abspath)
      return FUNC0(errno);

    abspath_size = FUNC9(abspath);

    *size -= 1;
    if (*size > abspath_size)
      *size = abspath_size;

    FUNC5(buffer, abspath, *size);
    buffer[*size] = '\0';

    return 0;
  } else {
    /* Case iii). Search PATH environment variable */
    char trypath[PATH_MAX];
    char *clonedpath = NULL;
    char *token = NULL;
    char *path = FUNC3("PATH");

    if (path == NULL)
      return UV_EINVAL;

    clonedpath = FUNC12(path);
    if (clonedpath == NULL)
      return UV_ENOMEM;

    token = FUNC10(clonedpath, ":");
    while (token != NULL) {
      FUNC7(trypath, sizeof(trypath) - 1, "%s/%s", token, args);
      if (FUNC6(trypath, abspath) == abspath) {
        /* Check the match is executable */
        if (FUNC1(abspath, X_OK) == 0) {
          abspath_size = FUNC9(abspath);

          *size -= 1;
          if (*size > abspath_size)
            *size = abspath_size;

          FUNC5(buffer, abspath, *size);
          buffer[*size] = '\0';

          FUNC11(clonedpath);
          return 0;
        }
      }
      token = FUNC10(NULL, ":");
    }
    FUNC11(clonedpath);

    /* Out of tokens (path entries), and no match found */
    return UV_EINVAL;
  }
}