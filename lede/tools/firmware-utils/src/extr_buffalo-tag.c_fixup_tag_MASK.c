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
struct buffalo_tag {char* brand; char* product; char* platform; char* ver_major; char* ver_minor; char* language; char* region_code; char* hwv; char* hwv_val; void* crc; int /*<<< orphan*/  flag; void* base2; void* base1; void* data_len; void* len; void* region_mask; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  base1 ; 
 int /*<<< orphan*/  base2 ; 
 char* brand ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag ; 
 int /*<<< orphan*/ * fsize ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 char* hwver ; 
 char* language ; 
 char* major ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffalo_tag*,char,int) ; 
 char* minor ; 
 int num_regions ; 
 char* platform ; 
 char* product ; 
 char* region_code ; 
 int /*<<< orphan*/  region_mask ; 
 int /*<<< orphan*/  skipcrc ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(unsigned char *buf, ssize_t buflen)
{
	struct buffalo_tag *tag = (struct buffalo_tag *) buf;

	FUNC3(tag, '\0', sizeof(*tag));

	FUNC2(tag->brand, brand, FUNC4(brand));
	FUNC2(tag->product, product, FUNC4(product));
	FUNC2(tag->platform, platform, FUNC4(platform));
	FUNC2(tag->ver_major, major, FUNC4(major));
	FUNC2(tag->ver_minor, minor, FUNC4(minor));
	FUNC2(tag->language, language, FUNC4(language));

	if (num_regions > 1) {
		tag->region_code[0] = 'M';
		tag->region_code[1] = '_';
		tag->region_mask = FUNC1(region_mask);
	} else {
		FUNC2(tag->region_code, region_code, 2);
	}

	tag->len = FUNC1(buflen);
	tag->data_len = FUNC1(fsize[0]);
	tag->base1 = FUNC1(base1);
	tag->base2 = FUNC1(base2);
	tag->flag = flag;

	if (hwver) {
		FUNC2(tag->hwv, "hwv", 3);
		FUNC2(tag->hwv_val, hwver, FUNC4(hwver));
	}

	if (!skipcrc)
		tag->crc = FUNC1(FUNC0(buf, buflen));
}