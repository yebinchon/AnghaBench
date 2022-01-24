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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC6(const WCHAR* filename,
                             const WCHAR* dir,
                             WCHAR** relpath) {
  size_t relpathlen;
  size_t filenamelen = FUNC4(filename);
  size_t dirlen = FUNC4(dir);
  FUNC1(!FUNC0(filename, dir, dirlen));
  if (dirlen > 0 && dir[dirlen - 1] == '\\')
    dirlen--;
  relpathlen = filenamelen - dirlen - 1;
  *relpath = FUNC2((relpathlen + 1) * sizeof(WCHAR));
  if (!*relpath)
    FUNC3(ERROR_OUTOFMEMORY, "uv__malloc");
  FUNC5(*relpath, filename + dirlen + 1, relpathlen);
  (*relpath)[relpathlen] = L'\0';
}