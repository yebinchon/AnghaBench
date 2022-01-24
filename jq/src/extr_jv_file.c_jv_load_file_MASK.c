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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct jv_parser {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct jv_parser*) ; 
 struct jv_parser* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct jv_parser*) ; 
 int /*<<< orphan*/  FUNC18 (struct jv_parser*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*,...) ; 
 scalar_t__ FUNC22 (char*,char*,int*) ; 
 int FUNC23 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

jv FUNC25(const char* filename, int raw) {
  struct stat sb;
  int fd = FUNC23(filename, O_RDONLY);
  if (fd == -1) {
    return FUNC13(FUNC21("Could not open %s: %s",
                                             filename,
                                             FUNC24(errno)));
  }
  if (FUNC7(fd, &sb) == -1 || FUNC0(sb.st_mode)) {
    FUNC1(fd);
    return FUNC13(FUNC21("Could not open %s: %s",
                                             filename,
                                             "It's a directory"));
  }
  FILE* file = FUNC3(fd, "r");
  struct jv_parser* parser = NULL;
  jv data;
  if (!file) {
    FUNC1(fd);
    return FUNC13(FUNC21("Could not open %s: %s",
                                             filename,
                                             FUNC24(errno)));
  }
  if (raw) {
    data = FUNC19("");
  } else {
    data = FUNC8();
    parser = FUNC16(0);
  }

  // To avoid mangling UTF-8 multi-byte sequences that cross the end of our read
  // buffer, we need to be able to read the remainder of a sequence and add that
  // before appending.
  const int max_utf8_len = 4;
  char buf[4096+max_utf8_len];
  while (!FUNC4(file) && !FUNC5(file)) {
    size_t n = FUNC6(buf, 1, sizeof(buf)-max_utf8_len, file);
    int len = 0;

    if (n == 0)
      continue;
    if (FUNC22(buf+(n-1), buf, &len) && len > 0 &&
        !FUNC4(file) && !FUNC5(file)) {
      n += FUNC6(buf+n, 1, len, file);
    }

    if (raw) {
      data = FUNC20(data, buf, n);
    } else {
      FUNC18(parser, buf, n, !FUNC4(file));
      jv value;
      while (FUNC14((value = FUNC17(parser))))
        data = FUNC9(data, value);
      if (FUNC12(FUNC10(value))) {
        FUNC11(data);
        data = value;
        break;
      }
    }
  }
  if (!raw)
      FUNC15(parser);
  int badread = FUNC5(file);
  if (FUNC2(file) != 0 || badread) {
    FUNC11(data);
    return FUNC13(FUNC21("Error reading from %s",
                                             filename));
  }
  return data;
}