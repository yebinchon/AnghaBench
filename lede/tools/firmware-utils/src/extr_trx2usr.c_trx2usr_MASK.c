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
typedef  int /*<<< orphan*/  uint8 ;
struct usr_header {scalar_t__ len; int /*<<< orphan*/  crc32; scalar_t__* reserved; int /*<<< orphan*/  hardware_revision; int /*<<< orphan*/  compatibility_id; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  COMPAT_ID ; 
 int /*<<< orphan*/  CRC32_INIT ; 
 int /*<<< orphan*/  EPI_VERSION ; 
 int /*<<< orphan*/  HARDWARE_REV ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRX_MAGIC ; 
 int /*<<< orphan*/  USR_MAGIC ; 
 struct usr_header buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (struct usr_header,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usr_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usr_header,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	int	FUNC8(FILE* trx, FILE* usr)
{
	struct usr_header	hdr;
	size_t			n;

	hdr.magic		= USR_MAGIC;
	hdr.len			= 0;
	hdr.crc32		= CRC32_INIT;
	hdr.version		= EPI_VERSION;
	hdr.compatibility_id	= COMPAT_ID;
	hdr.hardware_revision	= HARDWARE_REV;
	hdr.reserved[0]		= 0;
	hdr.reserved[1]		= 0;
	FUNC5(& hdr, sizeof(hdr), 1, usr);
	while ((n = FUNC3(buf, 1, CHUNK, trx)))
	{
		if (hdr.len == 0 && FUNC7(buf, TRX_MAGIC, FUNC6(TRX_MAGIC)) != 0)
		{
			break;
		}
		FUNC5(& buf, 1, n, usr);
		hdr.len += n;
		hdr.crc32 = FUNC0( hdr.crc32, (uint8 *) & buf, n);
	}
	FUNC4(usr, 0L, SEEK_SET);
	FUNC5(& hdr, sizeof(hdr), 1, usr);
	if (n != 0)
	{
		FUNC2(stderr, "Input is not a TRX file\n");
		return 1;
	}
	if (hdr.len == 0)
	{
		FUNC2(stderr, "Empty input\n");
		return 1;
	}
	if (FUNC1(trx))
	{
		FUNC2(stderr, "Read error\n");
		return 1;
	}
	if (FUNC1(usr))
	{
		FUNC2(stderr, "Write error\n");
		return 1;
	}
	return 0;
}