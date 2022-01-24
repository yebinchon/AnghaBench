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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*,unsigned int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,size_t) ; 

__attribute__((used)) static void FUNC5(const char *name, const EVP_MD *h, size_t max)
{
  EVP_MD_CTX outer, inner;
  FUNC1(&outer, h);
  uint8_t digest[EVP_MAX_MD_SIZE];
  unsigned int digestlen;

  for (size_t n = 0; n < max; n++)
  {
    FUNC1(&inner, h);
    for (size_t i = 0; i < n; i++)
    {
      uint8_t byte = n & 0xff;
      FUNC2(&inner, &byte, 1);
    }
    digestlen = sizeof digest;
    FUNC0(&inner, digest, &digestlen);

    FUNC2(&outer, digest, digestlen);
  }

  digestlen = sizeof digest;
  FUNC0(&outer, digest, &digestlen);

  FUNC3("%s(%zu) = ", name, max);
  FUNC4(digest, (size_t) digestlen);
  FUNC3("\n");
}