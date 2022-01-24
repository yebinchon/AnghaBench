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
typedef  int uint32_t ;
struct enc_param {unsigned char* magic; unsigned char seed; unsigned char* product; unsigned char* version; int datalen; int csum; int /*<<< orphan*/  longstate; int /*<<< orphan*/  key; } ;
typedef  unsigned long ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENC_MAGIC_LEN ; 
 int ENC_PRODUCT_LEN ; 
 int ENC_VERSION_LEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (unsigned char,int /*<<< orphan*/ ,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned char*,int) ; 
 int FUNC4 (unsigned char*) ; 
 void* FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 

int FUNC7(struct enc_param *ep, unsigned char *data,
		unsigned long datalen)
{
	unsigned char *p;
	uint32_t prod_len;
	uint32_t ver_len;
	uint32_t len;
	uint32_t csum;
	ssize_t remain;
	int err;
	int ret = -1;

#define CHECKLEN(_l) do {		\
	len = (_l);			\
	if (remain < len) {		\
		goto out;		\
	}				\
} while (0)

#define INCP() do {			\
	p += len;			\
	remain -= len;			\
} while (0)

	remain = datalen;
	p = data;

	CHECKLEN(ENC_MAGIC_LEN);
	err = FUNC4(p);
	if (err)
		goto out;
	FUNC6(ep->magic, p, ENC_MAGIC_LEN);
	INCP();

	CHECKLEN(1);
	ep->seed = *p;
	INCP();

	CHECKLEN(sizeof(uint32_t));
	prod_len = FUNC5(p);
	if (prod_len > ENC_PRODUCT_LEN)
		goto out;
	INCP();

	CHECKLEN(prod_len);
	FUNC6(ep->product, p, prod_len);
	INCP();

	CHECKLEN(sizeof(uint32_t));
	ver_len = FUNC5(p);
	if (ver_len > ENC_VERSION_LEN)
		goto out;
	INCP();

	CHECKLEN(ver_len);
	FUNC6(ep->version, p, ver_len);
	INCP();

	CHECKLEN(sizeof(uint32_t));
	ep->datalen = FUNC5(p);
	INCP();

	/* decrypt data */
	CHECKLEN(ep->datalen);
	err = FUNC2(ep->version[0], ep->key, p, data, ep->datalen,
			 ep->longstate);
	if (err)
		goto out;
	INCP();

	CHECKLEN(sizeof(uint32_t));
	ep->csum = FUNC5(p);
	INCP();

	csum = FUNC3(ep->datalen, data, ep->datalen);
	if (csum != ep->csum)
		goto out;

	/* decrypt product name */
	err = FUNC2(ep->product[0], ep->key, ep->version, ep->version,
			 ver_len, ep->longstate);
	if (err)
		goto out;

	/* decrypt version */
	err = FUNC2(ep->seed, ep->key, ep->product, ep->product, prod_len,
			 ep->longstate);
	if (err)
		goto out;

	ret = 0;
out:
	return ret;

#undef CHECKLEN
#undef INCP
}