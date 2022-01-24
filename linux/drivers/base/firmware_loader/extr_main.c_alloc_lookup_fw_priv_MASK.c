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
struct fw_priv {int /*<<< orphan*/  list; int /*<<< orphan*/  ref; } ;
struct firmware_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;

/* Variables and functions */
 int ENOMEM ; 
 int FW_OPT_NOCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_priv* FUNC1 (char const*,struct firmware_cache*,void*,size_t) ; 
 struct fw_priv* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const char *fw_name,
				struct firmware_cache *fwc,
				struct fw_priv **fw_priv, void *dbuf,
				size_t size, enum fw_opt opt_flags)
{
	struct fw_priv *tmp;

	FUNC6(&fwc->lock);
	if (!(opt_flags & FW_OPT_NOCACHE)) {
		tmp = FUNC2(fw_name);
		if (tmp) {
			FUNC3(&tmp->ref);
			FUNC7(&fwc->lock);
			*fw_priv = tmp;
			FUNC5("batched request - sharing the same struct fw_priv and lookup for multiple requests\n");
			return 1;
		}
	}

	tmp = FUNC1(fw_name, fwc, dbuf, size);
	if (tmp) {
		FUNC0(&tmp->list);
		if (!(opt_flags & FW_OPT_NOCACHE))
			FUNC4(&tmp->list, &fwc->head);
	}
	FUNC7(&fwc->lock);

	*fw_priv = tmp;

	return tmp ? 0 : -ENOMEM;
}