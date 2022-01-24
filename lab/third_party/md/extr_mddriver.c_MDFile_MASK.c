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
typedef  int /*<<< orphan*/  MD_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(char *filename)
{
  FILE *file;
  MD_CTX context;
  int len;
  unsigned char buffer[1024], digest[16];

  if ((file = FUNC5 (filename, "rb")) == NULL) {
    FUNC7("%s can't be opened\n", filename);
  } else {
    FUNC1(&context);
    while ((len = FUNC6 (buffer, 1, 1024, file)))
      FUNC3(&context, buffer, len);
    FUNC0(digest, &context);

    FUNC4(file);

    FUNC7("MD%d (%s) = ", MD, filename);
    FUNC2(digest);
    FUNC7("\n");
  }
}