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
struct entropy_store {int last_data_init; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entropy_store*) ; 
 int EXTRACT_SIZE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct entropy_store*,void*,size_t,scalar_t__) ; 
 size_t FUNC2 (struct entropy_store*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct entropy_store*,int /*<<< orphan*/ *) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct entropy_store*,size_t) ; 

__attribute__((used)) static ssize_t FUNC9(struct entropy_store *r, void *buf,
				 size_t nbytes, int min, int reserved)
{
	__u8 tmp[EXTRACT_SIZE];
	unsigned long flags;

	/* if last_data isn't primed, we need EXTRACT_SIZE extra bytes */
	if (fips_enabled) {
		FUNC5(&r->lock, flags);
		if (!r->last_data_init) {
			r->last_data_init = 1;
			FUNC6(&r->lock, flags);
			FUNC7(r->name, EXTRACT_SIZE,
					      FUNC0(r), _RET_IP_);
			FUNC8(r, EXTRACT_SIZE);
			FUNC3(r, tmp);
			FUNC5(&r->lock, flags);
			FUNC4(r->last_data, tmp, EXTRACT_SIZE);
		}
		FUNC6(&r->lock, flags);
	}

	FUNC7(r->name, nbytes, FUNC0(r), _RET_IP_);
	FUNC8(r, nbytes);
	nbytes = FUNC2(r, nbytes, min, reserved);

	return FUNC1(r, buf, nbytes, fips_enabled);
}