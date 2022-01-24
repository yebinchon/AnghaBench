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
struct nbd_device {struct nbd_config* config; } ;
struct nbd_config {unsigned long bytesize; unsigned long blksize; unsigned long flags; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
#define  NBD_CLEAR_QUE 138 
#define  NBD_CLEAR_SOCK 137 
 unsigned long NBD_DEF_BLKSIZE ; 
#define  NBD_DISCONNECT 136 
#define  NBD_DO_IT 135 
#define  NBD_PRINT_DEBUG 134 
#define  NBD_SET_BLKSIZE 133 
#define  NBD_SET_FLAGS 132 
#define  NBD_SET_SIZE 131 
#define  NBD_SET_SIZE_BLOCKS 130 
#define  NBD_SET_SOCK 129 
#define  NBD_SET_TIMEOUT 128 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct nbd_device*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nbd_device*,struct block_device*) ; 
 int FUNC3 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct nbd_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct nbd_device*,unsigned long,unsigned long) ; 
 int FUNC7 (struct nbd_device*,struct block_device*) ; 

__attribute__((used)) static int FUNC8(struct block_device *bdev, struct nbd_device *nbd,
		       unsigned int cmd, unsigned long arg)
{
	struct nbd_config *config = nbd->config;

	switch (cmd) {
	case NBD_DISCONNECT:
		return FUNC3(nbd);
	case NBD_CLEAR_SOCK:
		FUNC2(nbd, bdev);
		return 0;
	case NBD_SET_SOCK:
		return FUNC1(nbd, arg, false);
	case NBD_SET_BLKSIZE:
		if (!arg)
			arg = NBD_DEF_BLKSIZE;
		if (!FUNC4(arg))
			return -EINVAL;
		FUNC6(nbd, arg,
			     FUNC0(config->bytesize, arg));
		return 0;
	case NBD_SET_SIZE:
		FUNC6(nbd, config->blksize,
			     FUNC0(arg, config->blksize));
		return 0;
	case NBD_SET_SIZE_BLOCKS:
		FUNC6(nbd, config->blksize, arg);
		return 0;
	case NBD_SET_TIMEOUT:
		FUNC5(nbd, arg);
		return 0;

	case NBD_SET_FLAGS:
		config->flags = arg;
		return 0;
	case NBD_DO_IT:
		return FUNC7(nbd, bdev);
	case NBD_CLEAR_QUE:
		/*
		 * This is for compatibility only.  The queue is always cleared
		 * by NBD_DO_IT or NBD_CLEAR_SOCK.
		 */
		return 0;
	case NBD_PRINT_DEBUG:
		/*
		 * For compatibility only, we no longer keep a list of
		 * outstanding requests.
		 */
		return 0;
	}
	return -ENOTTY;
}