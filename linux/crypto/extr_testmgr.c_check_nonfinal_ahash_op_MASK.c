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
typedef  int /*<<< orphan*/  u8 ;
struct testvec_config {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC2(const char *op, int err,
				   u8 *result, unsigned int digestsize,
				   const char *driver, const char *vec_name,
				   const struct testvec_config *cfg)
{
	if (err) {
		FUNC0("alg: ahash: %s %s() failed with err %d on test vector %s, cfg=\"%s\"\n",
		       driver, op, err, vec_name, cfg->name);
		return err;
	}
	if (!FUNC1(result, digestsize)) {
		FUNC0("alg: ahash: %s %s() used result buffer on test vector %s, cfg=\"%s\"\n",
		       driver, op, vec_name, cfg->name);
		return -EINVAL;
	}
	return 0;
}