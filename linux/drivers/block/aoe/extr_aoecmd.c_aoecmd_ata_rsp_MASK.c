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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct frame {int flags; TYPE_1__* t; } ;
struct aoedev {int /*<<< orphan*/  lock; } ;
struct aoe_hdr {int minor; int /*<<< orphan*/  tag; int /*<<< orphan*/  major; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  ebuf ;
struct TYPE_2__ {int /*<<< orphan*/  nout_probes; int /*<<< orphan*/  nout; } ;

/* Variables and functions */
 int FFL_PROBE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct aoedev*) ; 
 struct aoedev* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aoedev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aoedev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct frame* FUNC10 (struct aoedev*,int /*<<< orphan*/ ) ; 
 struct frame* FUNC11 (struct aoedev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC12 (struct frame*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct frame*) ; 

struct sk_buff *
FUNC18(struct sk_buff *skb)
{
	struct aoedev *d;
	struct aoe_hdr *h;
	struct frame *f;
	u32 n;
	ulong flags;
	char ebuf[128];
	u16 aoemajor;

	h = (struct aoe_hdr *) skb->data;
	aoemajor = FUNC4(FUNC7(&h->major));
	d = FUNC2(aoemajor, h->minor, 0);
	if (d == NULL) {
		FUNC13(ebuf, sizeof ebuf, "aoecmd_ata_rsp: ata response "
			"for unknown device %d.%d\n",
			aoemajor, h->minor);
		FUNC0(ebuf);
		return skb;
	}

	FUNC14(&d->lock, flags);

	n = FUNC5(FUNC7(&h->tag));
	f = FUNC10(d, n);
	if (f) {
		FUNC6(d, f->t, FUNC17(f));
		f->t->nout--;
		if (f->flags & FFL_PROBE)
			f->t->nout_probes--;
	} else {
		f = FUNC11(d, n);
		if (f) {
			FUNC6(d, NULL, FUNC17(f));
		} else {
			FUNC6(d, NULL, FUNC16(n));
			FUNC15(&d->lock, flags);
			FUNC3(d);
			FUNC13(ebuf, sizeof(ebuf),
				 "%15s e%d.%d    tag=%08x@%08lx s=%pm d=%pm\n",
				 "unexpected rsp",
				 FUNC8(&h->major),
				 h->minor,
				 FUNC9(&h->tag),
				 jiffies,
				 h->src,
				 h->dst);
			FUNC0(ebuf);
			return skb;
		}
	}
	FUNC1(d);

	FUNC15(&d->lock, flags);

	FUNC12(f, skb);

	/*
	 * Note here that we do not perform an aoedev_put, as we are
	 * leaving this reference for the ktio to release.
	 */
	return NULL;
}