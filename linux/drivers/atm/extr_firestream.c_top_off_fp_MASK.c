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
typedef  int u32 ;
struct sk_buff {struct FS_BPENTRY* data; int /*<<< orphan*/  head; } ;
struct fs_dev {int dummy; } ;
struct freepool {scalar_t__ nr_buffers; int bufsize; int /*<<< orphan*/  offset; int /*<<< orphan*/  n; } ;
struct FS_BPENTRY {int flags; int next; int bsa; int aal_bufsize; struct freepool* fp; struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FP_FLAGS_EPI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  FS_DEBUG_QUEUE ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct FS_BPENTRY* FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 struct FS_BPENTRY* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct fs_dev*,struct freepool*) ; 
 int FUNC10 (struct fs_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct FS_BPENTRY*) ; 
 int /*<<< orphan*/  FUNC12 (struct fs_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13 (struct fs_dev *dev, struct freepool *fp,
			gfp_t gfp_flags)
{
	struct FS_BPENTRY *qe, *ne;
	struct sk_buff *skb;
	int n = 0;
	u32 qe_tmp;

	FUNC7 (FS_DEBUG_QUEUE, "Topping off queue at %x (%d-%d/%d)\n", 
		    fp->offset, FUNC10 (dev, FUNC0 (fp->offset)), fp->n, 
		    fp->nr_buffers);
	while (FUNC9(dev, fp) < fp->nr_buffers) {

		skb = FUNC4 (fp->bufsize, gfp_flags);
		FUNC7 (FS_DEBUG_ALLOC, "Alloc rec-skb: %p(%d)\n", skb, fp->bufsize);
		if (!skb) break;
		ne = FUNC8 (sizeof (struct FS_BPENTRY), gfp_flags);
		FUNC7 (FS_DEBUG_ALLOC, "Alloc rec-d: %p(%zd)\n", ne, sizeof (struct FS_BPENTRY));
		if (!ne) {
			FUNC7 (FS_DEBUG_ALLOC, "Free rec-skb: %p\n", skb);
			FUNC6 (skb);
			break;
		}

		FUNC7 (FS_DEBUG_QUEUE, "Adding skb %p desc %p -> %p(%p) ", 
			    skb, ne, skb->data, skb->head);
		n++;
		ne->flags = FP_FLAGS_EPI | fp->bufsize;
		ne->next  = FUNC11 (NULL);
		ne->bsa   = FUNC11 (skb->data);
		ne->aal_bufsize = fp->bufsize;
		ne->skb = skb;
		ne->fp = fp;

		/*
		 * FIXME: following code encodes and decodes
		 * machine pointers (could be 64-bit) into a
		 * 32-bit register.
		 */

		qe_tmp = FUNC10 (dev, FUNC2(fp->offset));
		FUNC7 (FS_DEBUG_QUEUE, "link at %x\n", qe_tmp);
		if (qe_tmp) {
			qe = FUNC5 ((long) qe_tmp);
			qe->next = FUNC11(ne);
			qe->flags &= ~FP_FLAGS_EPI;
		} else
			FUNC12 (dev, FUNC3(fp->offset), FUNC11(ne));

		FUNC12 (dev, FUNC2(fp->offset), FUNC11 (ne));
		fp->n++;   /* XXX Atomic_inc? */
		FUNC12 (dev, FUNC1(fp->offset), 1);
	}

	FUNC7 (FS_DEBUG_QUEUE, "Added %d entries. \n", n);
}