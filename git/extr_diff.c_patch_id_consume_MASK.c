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
struct patch_id_t {int patchlen; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC2(void *priv, char *line, unsigned long len)
{
	struct patch_id_t *data = priv;
	int new_len;

	new_len = FUNC0(line, len);

	the_hash_algo->update_fn(data->ctx, line, new_len);
	data->patchlen += new_len;
}