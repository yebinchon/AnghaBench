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

/* Variables and functions */
 int MD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 unsigned int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6 (char *string)
{
  MD_CTX context;
  unsigned char digest[16];
  unsigned int len = FUNC5(string);

  FUNC1(&context);
  FUNC3(&context, (unsigned char*)string, len);
  FUNC0(digest, &context);

  FUNC4("MD%d (\"%s\") = ", MD, string);
  FUNC2(digest);
  FUNC4("\n");
}