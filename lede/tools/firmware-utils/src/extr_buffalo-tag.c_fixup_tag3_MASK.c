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
struct buffalo_tag3 {char* brand; char* product; char* platform; char* ver_major; char* ver_minor; char* language; char* region_code; char* hwv; char* hwv_val; void* base2; void* len1; void* total_len; void* region_mask; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  base2 ; 
 char* brand ; 
 int /*<<< orphan*/ * fsize ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 char* hwver ; 
 char* language ; 
 char* major ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffalo_tag3*,char,int) ; 
 char* minor ; 
 int num_regions ; 
 char* platform ; 
 char* product ; 
 char* region_code ; 
 int /*<<< orphan*/  region_mask ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(unsigned char *buf, ssize_t totlen)
{
	struct buffalo_tag3 *tag = (struct buffalo_tag3 *) buf;

	FUNC2(tag, '\0', sizeof(*tag));

	FUNC1(tag->brand, brand, FUNC3(brand));
	FUNC1(tag->product, product, FUNC3(product));
	FUNC1(tag->platform, platform, FUNC3(platform));
	FUNC1(tag->ver_major, major, FUNC3(major));
	FUNC1(tag->ver_minor, minor, FUNC3(minor));
	FUNC1(tag->language, language, FUNC3(language));

	if (num_regions > 1) {
		tag->region_code[0] = 'M';
		tag->region_code[1] = '_';
		tag->region_mask = FUNC0(region_mask);
	} else {
		FUNC1(tag->region_code, region_code, 2);
	}

	tag->total_len = FUNC0(totlen);
	tag->len1 = FUNC0(fsize[0]);
	tag->base2 = FUNC0(base2);

	if (hwver) {
		FUNC1(tag->hwv, "hwv", 3);
		FUNC1(tag->hwv_val, hwver, FUNC3(hwver));
	}
}