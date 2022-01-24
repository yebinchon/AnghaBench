#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* cra_name; char* cra_driver_name; } ;
struct skcipher_alg {TYPE_1__ base; } ;
struct simd_skcipher_alg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct simd_skcipher_alg*) ; 
 int FUNC1 (struct simd_skcipher_alg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct skcipher_alg*,int) ; 
 struct simd_skcipher_alg* FUNC4 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_alg*,int,struct simd_skcipher_alg**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(struct skcipher_alg *algs, int count,
				   struct simd_skcipher_alg **simd_algs)
{
	int err;
	int i;
	const char *algname;
	const char *drvname;
	const char *basename;
	struct simd_skcipher_alg *simd;

	err = FUNC3(algs, count);
	if (err)
		return err;

	for (i = 0; i < count; i++) {
		FUNC2(FUNC6(algs[i].base.cra_name, "__", 2));
		FUNC2(FUNC6(algs[i].base.cra_driver_name, "__", 2));
		algname = algs[i].base.cra_name + 2;
		drvname = algs[i].base.cra_driver_name + 2;
		basename = algs[i].base.cra_driver_name;
		simd = FUNC4(algname, drvname, basename);
		err = FUNC1(simd);
		if (FUNC0(simd))
			goto err_unregister;
		simd_algs[i] = simd;
	}
	return 0;

err_unregister:
	FUNC5(algs, count, simd_algs);
	return err;
}