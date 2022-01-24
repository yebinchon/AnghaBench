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
struct stat {unsigned long long st_mode; unsigned long long st_uid; unsigned long long st_gid; scalar_t__ st_mtime; scalar_t__ st_size; } ;
struct passwd {int /*<<< orphan*/  pw_name; } ;
struct group {int /*<<< orphan*/  gr_name; } ;
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct group* FUNC2 (int) ; 
 struct passwd* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned long long) ; 
 char* FUNC7 (char const* const,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const* const) ; 
 int FUNC9 (char const* const) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,char const* const) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,char const* const) ; 

__attribute__((used)) static int FUNC15 (gzFile f, char b[512], struct stat *S, const char *const filename) {
  FUNC5 (b, 0, 512);
  int l = FUNC9 (filename);
  const int MAX_L = 99;
  int longname = 0;
  if (l > MAX_L) {
    char *p = FUNC7 (filename + l - MAX_L, '/');
    if (p == NULL) {
      longname = 1;
    } else {
      int o = p - filename;
      if (o > 155) {
        longname = 1;
      } else {
        FUNC8 (b, filename + o + 1);
        FUNC4 (b + 345, filename, o);
      }
    }
  } else {
    FUNC8 (b, filename);
  }

  if (longname) {
    FUNC14 (2, "too long full filename: %s\n", filename);
    l = FUNC9 (filename);
    FUNC11 (b, l, 'L');
    int r = FUNC13 (f, b, l, filename);
    if (r < 0) {
      return r;
    }
    FUNC5 (b, 0, 512);
    FUNC4 (b, filename, 100);
  }

  FUNC6 (b + 100, "%07o", S->st_mode);
  FUNC6 (b + 108, "%07o", S->st_uid);
  FUNC6 (b + 116, "%07o", S->st_gid);
  FUNC6 (b + 124, "%011llo", (unsigned long long) S->st_size);
  FUNC6 (b + 136, "%011llo", (unsigned long long) S->st_mtime);
  FUNC12 (b);

  b[156] = '0';
  if (FUNC1 (S->st_mode)) {
    b[156] = '2';
  } else if (FUNC0 (S->st_mode)) {
    b[156] = '5';
  }

  struct passwd *P = FUNC3 (S->st_uid);
  FUNC10 (b + 265, P->pw_name, 32);
  struct group *G = FUNC2 (S->st_gid);
  FUNC10 (b + 297, G->gr_name, 32);
  return 0;
}