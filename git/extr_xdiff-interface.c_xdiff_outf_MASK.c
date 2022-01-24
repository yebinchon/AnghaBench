#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; char* buf; } ;
struct xdiff_emit_state {TYPE_3__ remainder; int /*<<< orphan*/  line_fn; } ;
struct TYPE_5__ {char* ptr; int size; } ;
typedef  TYPE_1__ mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdiff_emit_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(void *priv_, mmbuffer_t *mb, int nbuf)
{
	struct xdiff_emit_state *priv = priv_;
	int i;

	if (!priv->line_fn)
		return 0;

	for (i = 0; i < nbuf; i++) {
		if (mb[i].ptr[mb[i].size-1] != '\n') {
			/* Incomplete line */
			FUNC1(&priv->remainder, mb[i].ptr, mb[i].size);
			continue;
		}

		/* we have a complete line */
		if (!priv->remainder.len) {
			FUNC0(priv, mb[i].ptr, mb[i].size);
			continue;
		}
		FUNC1(&priv->remainder, mb[i].ptr, mb[i].size);
		FUNC0(priv, priv->remainder.buf, priv->remainder.len);
		FUNC2(&priv->remainder);
	}
	if (priv->remainder.len) {
		FUNC0(priv, priv->remainder.buf, priv->remainder.len);
		FUNC2(&priv->remainder);
	}
	return 0;
}