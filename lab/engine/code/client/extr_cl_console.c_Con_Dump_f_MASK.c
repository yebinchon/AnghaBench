#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int current; int totallines; short* text; int linewidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ con ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13 (void)
{
	int		l, x, i;
	short	*line;
	fileHandle_t	f;
	int		bufferlen;
	char	*buffer;
	char	filename[MAX_QPATH];

	if (FUNC2() != 2)
	{
		FUNC4 ("usage: condump <filename>\n");
		return;
	}

	FUNC11( filename, FUNC3( 1 ), sizeof( filename ) );
	FUNC1( filename, sizeof( filename ), ".txt" );

	if (!FUNC0(filename, ".txt"))
	{
		FUNC4("Con_Dump_f: Only the \".txt\" extension is supported by this command!\n");
		return;
	}

	f = FUNC6( filename );
	if (!f)
	{
		FUNC4 ("ERROR: couldn't open %s.\n", filename);
		return;
	}

	FUNC4 ("Dumped console text to %s.\n", filename );

	// skip empty lines
	for (l = con.current - con.totallines + 1 ; l <= con.current ; l++)
	{
		line = con.text + (l%con.totallines)*con.linewidth;
		for (x=0 ; x<con.linewidth ; x++)
			if ((line[x] & 0xff) != ' ')
				break;
		if (x != con.linewidth)
			break;
	}

#ifdef _WIN32
	bufferlen = con.linewidth + 3 * sizeof ( char );
#else
	bufferlen = con.linewidth + 2 * sizeof ( char );
#endif

	buffer = FUNC8( bufferlen );

	// write the remaining lines
	buffer[bufferlen-1] = 0;
	for ( ; l <= con.current ; l++)
	{
		line = con.text + (l%con.totallines)*con.linewidth;
		for(i=0; i<con.linewidth; i++)
			buffer[i] = line[i] & 0xff;
		for (x=con.linewidth-1 ; x>=0 ; x--)
		{
			if (buffer[x] == ' ')
				buffer[x] = 0;
			else
				break;
		}
#ifdef _WIN32
		Q_strcat(buffer, bufferlen, "\r\n");
#else
		FUNC10(buffer, bufferlen, "\n");
#endif
		FUNC7(buffer, FUNC12(buffer), f);
	}

	FUNC9( buffer );
	FUNC5( f );
}