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
typedef  int /*<<< orphan*/  uint32_t ;
struct pack_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct hashfile {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  PACK_SIGNATURE ; 
 int /*<<< orphan*/  PACK_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct hashfile*,struct pack_header*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

off_t FUNC2(struct hashfile *f, uint32_t nr_entries)
{
	struct pack_header hdr;

	hdr.hdr_signature = FUNC1(PACK_SIGNATURE);
	hdr.hdr_version = FUNC1(PACK_VERSION);
	hdr.hdr_entries = FUNC1(nr_entries);
	FUNC0(f, &hdr, sizeof(hdr));
	return sizeof(hdr);
}