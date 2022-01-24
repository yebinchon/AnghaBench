#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct aoedev* private; } ;
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
struct aoetgt {struct aoeif* ifs; int /*<<< orphan*/  wpkts; int /*<<< orphan*/  rpkts; int /*<<< orphan*/  taint; int /*<<< orphan*/  ssthresh; int /*<<< orphan*/  nframes; int /*<<< orphan*/  maxout; int /*<<< orphan*/  nout; int /*<<< orphan*/  addr; TYPE_2__ ffree; int /*<<< orphan*/  falloc; } ;
struct aoeif {TYPE_1__* nd; } ;
struct aoedev {char rttavg; int rttdev; int ntargets; int /*<<< orphan*/  lock; struct aoetgt** targets; int /*<<< orphan*/  ref; int /*<<< orphan*/  maxbcnt; int /*<<< orphan*/  kicked; int /*<<< orphan*/  skbpool; } ;
struct TYPE_3__ {int name; } ;

/* Variables and functions */
 int FUNC0 (struct aoeif*) ; 
 int RTTDSCALE ; 
 char RTTSCALE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *ignored)
{
	struct aoedev *d;
	struct aoetgt **t, **te;
	struct aoeif *ifp, *ife;
	unsigned long flags;
	char c;

	d = s->private;
	FUNC2(s, "rttavg: %d rttdev: %d\n",
		d->rttavg >> RTTSCALE,
		d->rttdev >> RTTDSCALE);
	FUNC2(s, "nskbpool: %d\n", FUNC4(&d->skbpool));
	FUNC2(s, "kicked: %ld\n", d->kicked);
	FUNC2(s, "maxbcnt: %ld\n", d->maxbcnt);
	FUNC2(s, "ref: %ld\n", d->ref);

	FUNC5(&d->lock, flags);
	t = d->targets;
	te = t + d->ntargets;
	for (; t < te && *t; t++) {
		c = '\t';
		FUNC2(s, "falloc: %ld\n", (*t)->falloc);
		FUNC2(s, "ffree: %p\n",
			FUNC1(&(*t)->ffree) ? NULL : (*t)->ffree.next);
		FUNC2(s, "%pm:%d:%d:%d\n", (*t)->addr, (*t)->nout,
			(*t)->maxout, (*t)->nframes);
		FUNC2(s, "\tssthresh:%d\n", (*t)->ssthresh);
		FUNC2(s, "\ttaint:%d\n", (*t)->taint);
		FUNC2(s, "\tr:%d\n", (*t)->rpkts);
		FUNC2(s, "\tw:%d\n", (*t)->wpkts);
		ifp = (*t)->ifs;
		ife = ifp + FUNC0((*t)->ifs);
		for (; ifp->nd && ifp < ife; ifp++) {
			FUNC2(s, "%c%s", c, ifp->nd->name);
			c = ',';
		}
		FUNC3(s, "\n");
	}
	FUNC6(&d->lock, flags);

	return 0;
}