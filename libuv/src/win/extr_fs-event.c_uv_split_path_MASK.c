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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC7(const WCHAR* filename, WCHAR** dir,
    WCHAR** file) {
  size_t len, i;

  if (filename == NULL) {
    if (dir != NULL)
      *dir = NULL;
    *file = NULL;
    return 0;
  }

  len = FUNC5(filename);
  i = len;
  while (i > 0 && filename[--i] != '\\' && filename[i] != '/');

  if (i == 0) {
    if (dir) {
      *dir = (WCHAR*)FUNC2((MAX_PATH + 1) * sizeof(WCHAR));
      if (!*dir) {
        FUNC3(ERROR_OUTOFMEMORY, "uv__malloc");
      }

      if (!FUNC0(MAX_PATH, *dir)) {
        FUNC1(*dir);
        *dir = NULL;
        return -1;
      }
    }

    *file = FUNC4(filename);
  } else {
    if (dir) {
      *dir = (WCHAR*)FUNC2((i + 2) * sizeof(WCHAR));
      if (!*dir) {
        FUNC3(ERROR_OUTOFMEMORY, "uv__malloc");
      }
      FUNC6(*dir, filename, i + 1);
      (*dir)[i + 1] = L'\0';
    }

    *file = (WCHAR*)FUNC2((len - i) * sizeof(WCHAR));
    if (!*file) {
      FUNC3(ERROR_OUTOFMEMORY, "uv__malloc");
    }
    FUNC6(*file, filename + i + 1, len - i - 1);
    (*file)[len - i - 1] = L'\0';
  }

  return 0;
}