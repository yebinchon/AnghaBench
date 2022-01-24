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
typedef  int uLong ;
typedef  int /*<<< orphan*/  uInt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFREADCOMMENT ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t FUNC0 (unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int unz_GAME_QL ; 

__attribute__((used)) static uLong FUNC6(FILE *fin)
{
	unsigned char* buf;
	uLong uSizeFile;
	uLong uBackRead;
	uLong uMaxBack=0xffff; /* maximum size of global comment */
	uLong uPosFound=0;
	
	if (FUNC3(fin,0,SEEK_END) != 0)
		return 0;


	uSizeFile = FUNC4( fin );
	
	if (uMaxBack>uSizeFile)
		uMaxBack = uSizeFile;

	buf = (unsigned char*)FUNC5(BUFREADCOMMENT+4);
	if (buf==NULL)
		return 0;

	uBackRead = 4;
	while (uBackRead<uMaxBack)
	{
		uLong uReadSize,uReadPos ;
		int i;
		size_t gametype;

		if (uBackRead+BUFREADCOMMENT>uMaxBack) 
			uBackRead = uMaxBack;
		else
			uBackRead+=BUFREADCOMMENT;
		uReadPos = uSizeFile-uBackRead ;
		
		uReadSize = ((BUFREADCOMMENT+4) < (uSizeFile-uReadPos)) ? 
                     (BUFREADCOMMENT+4) : (uSizeFile-uReadPos);
		if (FUNC3(fin,uReadPos,SEEK_SET)!=0)
			break;
		
		if (unz_GAME_QL == 1) {
			gametype = FUNC1(buf,(uInt)uReadSize,1,fin);
		} else {
			gametype = FUNC0(buf,(uInt)uReadSize,1,fin);
		}

		if (gametype!=1)
			break;

                for (i=(int)uReadSize-3; (i--)>0;)
			if (((*(buf+i))==0x50) && ((*(buf+i+1))==0x4b) && 
				((*(buf+i+2))==0x05) && ((*(buf+i+3))==0x06))
			{
				uPosFound = uReadPos+i;
				break;
			}

		if (uPosFound!=0)
			break;
	}
	FUNC2(buf);
	return uPosFound;
}