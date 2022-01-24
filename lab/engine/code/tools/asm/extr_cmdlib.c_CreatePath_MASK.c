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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char FUNC4 (char const) ; 

void	FUNC5 (const char *path)
{
	const char	*ofs;
	char		c;
	char		dir[1024];

#ifdef _WIN32
	int		olddrive = -1;

	if ( path[1] == ':' )
	{
		olddrive = _getdrive();
		_chdrive( toupper( path[0] ) - 'A' + 1 );
	}
#endif

	if (path[1] == ':')
		path += 2;

	for (ofs = path+1 ; *ofs ; ofs++)
	{
		c = *ofs;
		if (c == '/' || c == '\\')
		{	// create the directory
			FUNC3( dir, path, ofs - path );
			dir[ ofs - path ] = 0;
			FUNC0( dir );
		}
	}

#ifdef _WIN32
	if ( olddrive != -1 )
	{
		_chdrive( olddrive );
	}
#endif
}