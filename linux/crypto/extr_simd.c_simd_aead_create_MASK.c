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
struct simd_aead_alg {int dummy; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct simd_aead_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct simd_aead_alg* FUNC1 (char const*,char*,char const*) ; 
 int FUNC2 (char*,int,char*,char const*) ; 

struct simd_aead_alg *FUNC3(const char *algname,
				       const char *basename)
{
	char drvname[CRYPTO_MAX_ALG_NAME];

	if (FUNC2(drvname, CRYPTO_MAX_ALG_NAME, "simd-%s", basename) >=
	    CRYPTO_MAX_ALG_NAME)
		return FUNC0(-ENAMETOOLONG);

	return FUNC1(algname, drvname, basename);
}