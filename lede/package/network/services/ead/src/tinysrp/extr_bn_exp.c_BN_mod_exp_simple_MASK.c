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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int TABLE_SIZE ; 

int FUNC11(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
	     const BIGNUM *m, BN_CTX *ctx)
	{
	int i,j,bits,ret=0,wstart,wend,window,wvalue,ts=0;
	int start=1;
	BIGNUM *d;
	BIGNUM val[TABLE_SIZE];

	bits=FUNC8(p);

	if (bits == 0)
		{
		FUNC9(r);
		return(1);
		}

	FUNC2(ctx);
	if ((d = FUNC1(ctx)) == NULL) goto err;

	FUNC4(&(val[0]));
	ts=1;
	if (!FUNC6(&(val[0]),a,m,ctx)) goto err;               /* 1 */

	window = FUNC10(bits);
	if (window > 1)
		{
		if (!FUNC7(d,&(val[0]),&(val[0]),m,ctx))
			goto err;                               /* 2 */
		j=1<<(window-1);
		for (i=1; i<j; i++)
			{
			FUNC4(&(val[i]));
			if (!FUNC7(&(val[i]),&(val[i-1]),d,m,ctx))
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

	if (!FUNC9(r)) goto err;

	for (;;)
		{
		if (FUNC5(p,wstart) == 0)
			{
			if (!start)
				if (!FUNC7(r,r,r,m,ctx))
				goto err;
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
			if (FUNC5(p,wstart-i))
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
				if (!FUNC7(r,r,r,m,ctx))
					goto err;
				}

		/* wvalue will be an odd number < 2^window */
		if (!FUNC7(r,r,&(val[wvalue>>1]),m,ctx))
			goto err;

		/* move the 'window' down further */
		wstart-=wend+1;
		wvalue=0;
		start=0;
		if (wstart < 0) break;
		}
	ret=1;
err:
	FUNC0(ctx);
	for (i=0; i<ts; i++)
		FUNC3(&(val[i]));
	return(ret);
	}