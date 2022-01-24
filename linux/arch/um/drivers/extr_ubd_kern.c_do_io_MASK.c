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
struct io_thread_req {int length; int sectorsize; char* buffer; void* error; int /*<<< orphan*/ * fds; int /*<<< orphan*/  req; scalar_t__* offsets; scalar_t__ offset; int /*<<< orphan*/  sector_mask; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 void* BLK_STS_NOTSUPP ; 
#define  REQ_OP_DISCARD 131 
 int REQ_OP_FLUSH ; 
#define  REQ_OP_READ 130 
#define  REQ_OP_WRITE 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,unsigned long,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,unsigned char*) ; 
 void* FUNC9 (struct io_thread_req*) ; 

__attribute__((used)) static void FUNC10(struct io_thread_req *req)
{
	char *buf = NULL;
	unsigned long len;
	int n, nsectors, start, end, bit;
	__u64 off;

	/* FLUSH is really a special case, we cannot "case" it with others */

	if (FUNC7(req->req) == REQ_OP_FLUSH) {
		/* fds[0] is always either the rw image or our cow file */
		req->error = FUNC1(-FUNC6(req->fds[0]));
		return;
	}

	nsectors = req->length / req->sectorsize;
	start = 0;
	do {
		bit = FUNC8(start, (unsigned char *) &req->sector_mask);
		end = start;
		while((end < nsectors) &&
		      (FUNC8(end, (unsigned char *)
				    &req->sector_mask) == bit))
			end++;

		off = req->offset + req->offsets[bit] +
			start * req->sectorsize;
		len = (end - start) * req->sectorsize;
		if (req->buffer != NULL)
			buf = &req->buffer[start * req->sectorsize];

		switch (FUNC7(req->req)) {
		case REQ_OP_READ:
			n = 0;
			do {
				buf = &buf[n];
				len -= n;
				n = FUNC4(req->fds[bit], buf, len, off);
				if (n < 0) {
					req->error = FUNC1(-n);
					return;
				}
			} while((n < len) && (n != 0));
			if (n < len) FUNC2(&buf[n], 0, len - n);
			break;
		case REQ_OP_WRITE:
			n = FUNC5(req->fds[bit], buf, len, off);
			if(n != len){
				req->error = FUNC1(-n);
				return;
			}
			break;
		case REQ_OP_DISCARD:
		case REQ_OP_WRITE_ZEROES:
			n = FUNC3(req->fds[bit], off, len);
			if (n) {
				req->error = FUNC1(-n);
				return;
			}
			break;
		default:
			FUNC0(1);
			req->error = BLK_STS_NOTSUPP;
			return;
		}

		start = end;
	} while(start < nsectors);

	req->error = FUNC9(req);
}