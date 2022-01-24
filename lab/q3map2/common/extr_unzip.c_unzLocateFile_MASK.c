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
struct TYPE_2__ {void* pos_in_central_dir; void* num_file; int /*<<< orphan*/  current_file_ok; } ;
typedef  TYPE_1__ unz_s ;
typedef  int /*<<< orphan*/ * unzFile ;
typedef  void* uLong ;
typedef  int /*<<< orphan*/  szCurrentFileName ;

/* Variables and functions */
 int UNZ_END_OF_LIST_OF_FILE ; 
 scalar_t__ UNZ_MAXFILENAMEINZIP ; 
 int UNZ_OK ; 
 int UNZ_PARAMERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 

extern int FUNC5 (unzFile file, const char *szFileName, int iCaseSensitivity)
{
	unz_s* s;	
	int err;

	
	uLong num_fileSaved;
	uLong pos_in_central_dirSaved;


	if (file==NULL)
		return UNZ_PARAMERROR;

    if (FUNC0(szFileName)>=UNZ_MAXFILENAMEINZIP)
        return UNZ_PARAMERROR;

	s=(unz_s*)file;
	if (!s->current_file_ok)
		return UNZ_END_OF_LIST_OF_FILE;

	num_fileSaved = s->num_file;
	pos_in_central_dirSaved = s->pos_in_central_dir;

	err = FUNC2(file);

	while (err == UNZ_OK)
	{
		char szCurrentFileName[UNZ_MAXFILENAMEINZIP+1];
		FUNC1(file,NULL,
								szCurrentFileName,sizeof(szCurrentFileName)-1,
								NULL,0,NULL,0);
		if (FUNC4(szCurrentFileName,
										szFileName,iCaseSensitivity)==0)
			return UNZ_OK;
		err = FUNC3(file);
	}

	s->num_file = num_fileSaved ;
	s->pos_in_central_dir = pos_in_central_dirSaved ;
	return err;
}