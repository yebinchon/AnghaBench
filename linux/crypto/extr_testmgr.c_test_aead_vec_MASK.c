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
struct testvec_config {int dummy; } ;
struct cipher_test_sglists {int dummy; } ;
struct aead_testvec {scalar_t__ novrfy; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  cfgname ;

/* Variables and functions */
 unsigned int FUNC0 (struct testvec_config*) ; 
 int TESTVEC_CONFIG_NAMELEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct testvec_config* default_cipher_testvec_configs ; 
 unsigned int fuzz_iterations ; 
 int /*<<< orphan*/  FUNC2 (struct testvec_config*,char*,int) ; 
 int /*<<< orphan*/  noextratests ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int FUNC4 (char const*,int,struct aead_testvec const*,char*,struct testvec_config*,struct aead_request*,struct cipher_test_sglists*) ; 

__attribute__((used)) static int FUNC5(const char *driver, int enc,
			 const struct aead_testvec *vec, unsigned int vec_num,
			 struct aead_request *req,
			 struct cipher_test_sglists *tsgls)
{
	char vec_name[16];
	unsigned int i;
	int err;

	if (enc && vec->novrfy)
		return 0;

	FUNC3(vec_name, "%u", vec_num);

	for (i = 0; i < FUNC0(default_cipher_testvec_configs); i++) {
		err = FUNC4(driver, enc, vec, vec_name,
					&default_cipher_testvec_configs[i],
					req, tsgls);
		if (err)
			return err;
	}

#ifdef CONFIG_CRYPTO_MANAGER_EXTRA_TESTS
	if (!noextratests) {
		struct testvec_config cfg;
		char cfgname[TESTVEC_CONFIG_NAMELEN];

		for (i = 0; i < fuzz_iterations; i++) {
			generate_random_testvec_config(&cfg, cfgname,
						       sizeof(cfgname));
			err = test_aead_vec_cfg(driver, enc, vec, vec_name,
						&cfg, req, tsgls);
			if (err)
				return err;
			cond_resched();
		}
	}
#endif
	return 0;
}