#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_13__ {int score; int qe; int te; int tb; int qb; } ;
typedef  TYPE_1__ kswr_t ;
struct TYPE_14__ {int size; } ;
typedef  TYPE_2__ kswq_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int KSW_XBYTE ; 
 int KSW_XSTART ; 
 int KSW_XSTOP ; 
 int KSW_XSUBO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__ FUNC1 (TYPE_2__*,int,int /*<<< orphan*/  const*,int,int,int) ; 
 TYPE_2__* FUNC2 (int,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 TYPE_1__ FUNC3 (TYPE_2__*,int,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const*) ; 

kswr_t FUNC5(int qlen, uint8_t *query, int tlen, uint8_t *target, int m, const int8_t *mat, int gapo, int gape, int xtra, kswq_t **qry)
{
	int size;
	kswq_t *q;
	kswr_t r, rr;
	kswr_t (*func)(kswq_t*, int, const uint8_t*, int, int, int);

	q = (qry && *qry)? *qry : FUNC2((xtra&KSW_XBYTE)? 1 : 2, qlen, query, m, mat);
	if (qry && *qry == 0) *qry = q;
	func = q->size == 2? ksw_i16 : ksw_u8;
	size = q->size;
	r = func(q, tlen, target, gapo, gape, xtra);
	if (qry == 0) FUNC0(q);
	if ((xtra&KSW_XSTART) == 0 || ((xtra&KSW_XSUBO) && r.score < (xtra&0xffff))) return r;
	FUNC4(r.qe + 1, query); FUNC4(r.te + 1, target); // +1 because qe/te points to the exact end, not the position after the end
	q = FUNC2(size, r.qe + 1, query, m, mat);
	rr = func(q, tlen, target, gapo, gape, KSW_XSTOP | r.score);
	FUNC4(r.qe + 1, query); FUNC4(r.te + 1, target);
	FUNC0(q);
	if (r.score == rr.score)
		r.tb = r.te - rr.te, r.qb = r.qe - rr.qe;
	return r;
}