#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int* d; } ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_1__ const*,TYPE_1__ const*) ; 
 TYPE_1__ const* FUNC16 () ; 
 int FUNC17 (int) ; 
 int TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__ const*) ; 

int FUNC19(BIGNUM *rr, BIGNUM *a, const BIGNUM *p,
		    const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
	{
	int i,j,bits,ret=0,wstart,wend,window,wvalue;
	int start=1,ts=0;
	BIGNUM *d,*r;
	BIGNUM *aa;
	BIGNUM val[TABLE_SIZE];
	BN_MONT_CTX *mont=NULL;

	FUNC18(a);
	FUNC18(p);
	FUNC18(m);

	if (!(m->d[0] & 1))
		{
		return(0);
		}
	bits=FUNC12(p);
	if (bits == 0)
		{
		FUNC13(rr);
		return(1);
		}
	FUNC2(ctx);
	d = FUNC1(ctx);
	r = FUNC1(ctx);
	if (d == NULL || r == NULL) goto err;

	/* If this is not done, things will break in the montgomery
	 * part */

	if (in_mont != NULL)
		mont=in_mont;
	else
		{
		if ((mont=FUNC4()) == NULL) goto err;
		if (!FUNC5(mont,m,ctx)) goto err;
		}

	FUNC8(&val[0]);
	ts=1;
	if (FUNC15(a,m) >= 0)
		{
		if (!FUNC10(&(val[0]),a,m,ctx))
			goto err;
		aa= &(val[0]);
		}
	else
		aa=a;
	if (!FUNC14(&(val[0]),aa,mont,ctx)) goto err; /* 1 */

	window = FUNC17(bits);
	if (window > 1)
		{
		if (!FUNC11(d,&(val[0]),&(val[0]),mont,ctx)) goto err; /* 2 */
		j=1<<(window-1);
		for (i=1; i<j; i++)
			{
			FUNC8(&(val[i]));
			if (!FUNC11(&(val[i]),&(val[i-1]),d,mont,ctx))
				goto err;
			}
		ts=i;
		}

	start=1;        /* This is used to avoid multiplication etc
			 * when there is only the value '1' in the
			 * buffer. */
	wvalue=0;       /* The 'value' of the window */
	wstart=bits-1;  /* The top bit of the window */
	wend=0;         /* The bottom bit of the window */

	if (!FUNC14(r,FUNC16(),mont,ctx)) goto err;
	for (;;)
		{
		if (FUNC9(p,wstart) == 0)
			{
			if (!start)
				{
				if (!FUNC11(r,r,r,mont,ctx))
				goto err;
				}
			if (wstart == 0) break;
			wstart--;
			continue;
			}
		/* We now have wstart on a 'set' bit, we now need to work out
		 * how bit a window to do.  To do this we need to scan
		 * forward until the last set bit before the end of the
		 * window */
		j=wstart;
		wvalue=1;
		wend=0;
		for (i=1; i<window; i++)
			{
			if (wstart-i < 0) break;
			if (FUNC9(p,wstart-i))
				{
				wvalue<<=(i-wend);
				wvalue|=1;
				wend=i;
				}
			}

		/* wend is the size of the current window */
		j=wend+1;
		/* add the 'bytes above' */
		if (!start)
			for (i=0; i<j; i++)
				{
				if (!FUNC11(r,r,r,mont,ctx))
					goto err;
				}

		/* wvalue will be an odd number < 2^window */
		if (!FUNC11(r,r,&(val[wvalue>>1]),mont,ctx))
			goto err;

		/* move the 'window' down further */
		wstart-=wend+1;
		wvalue=0;
		start=0;
		if (wstart < 0) break;
		}
	if (!FUNC7(rr,r,mont,ctx)) goto err;
	ret=1;
err:
	if ((in_mont == NULL) && (mont != NULL)) FUNC3(mont);
	FUNC0(ctx);
	for (i=0; i<ts; i++)
		FUNC6(&(val[i]));
	return(ret);
	}