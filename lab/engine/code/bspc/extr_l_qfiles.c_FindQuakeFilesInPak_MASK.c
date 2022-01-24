#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* pakfile; char* filename; char* origname; int zipfile; int offset; int length; struct TYPE_10__* next; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ quakefile_t ;
struct TYPE_11__ {scalar_t__ ident; int dirofs; int dirlen; char* name; int filepos; int filelen; } ;
typedef  TYPE_2__ dsinpackfile_t ;
typedef  TYPE_2__ dpackheader_t ;
typedef  TYPE_2__ dpackfile_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 scalar_t__ IDPAKHEADER ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SINPAKHEADER ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int FUNC8 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

quakefile_t *FUNC14(char *pakfile, char *filter)
{
	FILE *fp;
	dpackheader_t packheader;
	dsinpackfile_t *packfiles;
	dpackfile_t *idpackfiles;
	quakefile_t *qfiles, *lastqf, *qf;
	int numpackdirs, i;

	qfiles = NULL;
	lastqf = NULL;
	//open the pak file
	fp = FUNC7(pakfile, "rb");
	if (!fp)
	{
		FUNC5("can't open pak file %s", pakfile);
		return NULL;
	} //end if
	//read pak header, check for valid pak id and seek to the dir entries
	if ((FUNC8(&packheader, 1, sizeof(dpackheader_t), fp) != sizeof(dpackheader_t))
		|| (packheader.ident != IDPAKHEADER && packheader.ident != SINPAKHEADER)
		||	(FUNC10(fp, FUNC3(packheader.dirofs), SEEK_SET))
		)
	{
		FUNC6(fp);
		FUNC5("invalid pak file %s", pakfile);
		return NULL;
	} //end if
	//if it is a pak file from id software
	if (packheader.ident == IDPAKHEADER)
	{
		//number of dir entries in the pak file
		numpackdirs = FUNC3(packheader.dirlen) / sizeof(dpackfile_t);
		idpackfiles = (dpackfile_t *) FUNC11(numpackdirs * sizeof(dpackfile_t));
		if (!idpackfiles) FUNC1("out of memory");
		//read the dir entry
		if (FUNC8(idpackfiles, sizeof(dpackfile_t), numpackdirs, fp) != numpackdirs)
		{
			FUNC6(fp);
			FUNC9(idpackfiles);
			FUNC5("can't read the Quake pak file dir entries from %s", pakfile);
			return NULL;
		} //end if
		FUNC6(fp);
		//convert to sin pack files
		packfiles = (dsinpackfile_t *) FUNC11(numpackdirs * sizeof(dsinpackfile_t));
		if (!packfiles) FUNC1("out of memory");
		for (i = 0; i < numpackdirs; i++)
		{
			FUNC13(packfiles[i].name, idpackfiles[i].name);
			packfiles[i].filepos = FUNC3(idpackfiles[i].filepos);
			packfiles[i].filelen = FUNC3(idpackfiles[i].filelen);
		} //end for
		FUNC9(idpackfiles);
	} //end if
	else //its a Sin pack file
	{
		//number of dir entries in the pak file
		numpackdirs = FUNC3(packheader.dirlen) / sizeof(dsinpackfile_t);
		packfiles = (dsinpackfile_t *) FUNC11(numpackdirs * sizeof(dsinpackfile_t));
		if (!packfiles) FUNC1("out of memory");
		//read the dir entry
		if (FUNC8(packfiles, sizeof(dsinpackfile_t), numpackdirs, fp) != numpackdirs)
		{
			FUNC6(fp);
			FUNC9(packfiles);
			FUNC5("can't read the Sin pak file dir entries from %s", pakfile);
			return NULL;
		} //end if
		FUNC6(fp);
		for (i = 0; i < numpackdirs; i++)
		{
			packfiles[i].filepos = FUNC3(packfiles[i].filepos);
			packfiles[i].filelen = FUNC3(packfiles[i].filelen);
		} //end for
	} //end else
	//
	for (i = 0; i < numpackdirs; i++)
	{
		FUNC0(packfiles[i].name);
		if (FUNC2(filter, packfiles[i].name, false))
		{
			qf = FUNC11(sizeof(quakefile_t));
			if (!qf) FUNC1("out of memory");
			FUNC12(qf, 0, sizeof(quakefile_t));
			FUNC13(qf->pakfile, pakfile);
			FUNC13(qf->filename, pakfile);
			FUNC13(qf->origname, packfiles[i].name);
			qf->zipfile = false;
			qf->offset = packfiles[i].filepos;
			qf->length = packfiles[i].filelen;
			qf->type = FUNC4(packfiles[i].name);
			//add the file ot the list
			qf->next = NULL;
			if (lastqf) lastqf->next = qf;
			else qfiles = qf;
			lastqf = qf;
		} //end if
	} //end for
	FUNC9(packfiles);
	return qfiles;
}