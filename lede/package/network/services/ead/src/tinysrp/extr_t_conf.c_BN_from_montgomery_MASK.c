#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int* d; int top; int neg; } ;
struct TYPE_25__ {int ri; int n0; TYPE_2__ N; TYPE_2__ Ni; } ;
typedef  int BN_ULONG ;
typedef  TYPE_1__ BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_2__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long long BN_MASK2 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (int*,int*,int,int) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 

int FUNC15(BIGNUM *ret, BIGNUM *a, BN_MONT_CTX *mont,
	     BN_CTX *ctx)
	{
	int retn=0;

#ifdef MONT_WORD
	BIGNUM *n,*r;
	BN_ULONG *ap,*np,*rp,n0,v,*nrp;
	int al,nl,max,i,x,ri;

	BN_CTX_start(ctx);
	if ((r = BN_CTX_get(ctx)) == NULL) goto err;

	if (!BN_copy(r,a)) goto err;
	n= &(mont->N);

	ap=a->d;
	/* mont->ri is the size of mont->N in bits (rounded up
	   to the word size) */
	al=ri=mont->ri/BN_BITS2;

	nl=n->top;
	if ((al == 0) || (nl == 0)) { r->top=0; return(1); }

	max=(nl+al+1); /* allow for overflow (no?) XXX */
	if (bn_wexpand(r,max) == NULL) goto err;
	if (bn_wexpand(ret,max) == NULL) goto err;

	r->neg=a->neg^n->neg;
	np=n->d;
	rp=r->d;
	nrp= &(r->d[nl]);

	/* clear the top words of T */
#if 1
	for (i=r->top; i<max; i++) /* memset? XXX */
		r->d[i]=0;
#else
	memset(&(r->d[r->top]),0,(max-r->top)*sizeof(BN_ULONG));
#endif

	r->top=max;
	n0=mont->n0;

#ifdef BN_COUNT
	printf("word BN_from_montgomery %d * %d\n",nl,nl);
#endif
	for (i=0; i<nl; i++)
		{
#ifdef __TANDEM
		{
		   long long t1;
		   long long t2;
		   long long t3;
		   t1 = rp[0] * (n0 & 0177777);
		   t2 = 037777600000l;
		   t2 = n0 & t2;
		   t3 = rp[0] & 0177777;
		   t2 = (t3 * t2) & BN_MASK2;
		   t1 = t1 + t2;
		   v=bn_mul_add_words(rp,np,nl,(BN_ULONG) t1);
		}
#else
		v=bn_mul_add_words(rp,np,nl,(rp[0]*n0)&BN_MASK2);
#endif
		nrp++;
		rp++;
		if (((nrp[-1]+=v)&BN_MASK2) >= v)
			continue;
		else
			{
			if (((++nrp[0])&BN_MASK2) != 0) continue;
			if (((++nrp[1])&BN_MASK2) != 0) continue;
			for (x=2; (((++nrp[x])&BN_MASK2) == 0); x++) ;
			}
		}
	bn_fix_top(r);

	/* mont->ri will be a multiple of the word size */
#if 0
	BN_rshift(ret,r,mont->ri);
#else
	ret->neg = r->neg;
	x=ri;
	rp=ret->d;
	ap= &(r->d[x]);
	if (r->top < x)
		al=0;
	else
		al=r->top-x;
	ret->top=al;
	al-=4;
	for (i=0; i<al; i+=4)
		{
		BN_ULONG t1,t2,t3,t4;

		t1=ap[i+0];
		t2=ap[i+1];
		t3=ap[i+2];
		t4=ap[i+3];
		rp[i+0]=t1;
		rp[i+1]=t2;
		rp[i+2]=t3;
		rp[i+3]=t4;
		}
	al+=4;
	for (; i<al; i++)
		rp[i]=ap[i];
#endif
#else /* !MONT_WORD */
	BIGNUM *t1,*t2;

	FUNC2(ctx);
	t1 = FUNC1(ctx);
	t2 = FUNC1(ctx);
	if (t1 == NULL || t2 == NULL) goto err;

	if (!FUNC4(t1,a)) goto err;
	FUNC5(t1,mont->ri);

	if (!FUNC6(t2,t1,&mont->Ni,ctx)) goto err;
	FUNC5(t2,mont->ri);

	if (!FUNC6(t1,t2,&mont->N,ctx)) goto err;
	if (!FUNC3(t2,a,t1)) goto err;
	FUNC7(ret,t2,mont->ri);
#endif /* MONT_WORD */

	if (FUNC8(ret, &(mont->N)) >= 0)
		{
		FUNC9(ret,ret,&(mont->N));
		}
	retn=1;
 err:
	FUNC0(ctx);
	return(retn);
	}