#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  filestream; } ;
typedef  TYPE_1__ unz_s ;
typedef  scalar_t__ unzFile ;
struct TYPE_9__ {int /*<<< orphan*/  filestream; } ;
struct TYPE_8__ {int length; int /*<<< orphan*/  offset; int /*<<< orphan*/  filename; TYPE_3__ zipinfo; int /*<<< orphan*/  pakfile; scalar_t__ zipfile; } ;
typedef  TYPE_2__ quakefile_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,void*,int) ; 

int FUNC11(quakefile_t *qf, void **bufferptr)
{
	FILE *fp;
	void *buffer;
	int length;
	unzFile zf;

	if (qf->zipfile)
	{
		//open the zip file
		zf = FUNC8(qf->pakfile);
		//set the file pointer
		qf->zipinfo.filestream = ((unz_s *) zf)->filestream;
		//open the Quake file in the zip file
		FUNC9(&qf->zipinfo);
		//allocate memory for the buffer
		length = qf->length;
		buffer = FUNC0(length+1);
		//read the Quake file from the zip file
		length = FUNC10(&qf->zipinfo, buffer, length);
		//close the Quake file in the zip file
		FUNC7(&qf->zipinfo);
		//close the zip file
		FUNC6(zf);

		*bufferptr = buffer;
		return length;
	} //end if
	else
	{
		fp = FUNC2(qf->filename);
		if (qf->offset) FUNC5(fp, qf->offset, SEEK_SET);
		length = qf->length;
		if (!length) length = FUNC1(fp);
		buffer = FUNC0(length+1);
		((char *)buffer)[length] = 0;
		FUNC3(fp, buffer, length);
		FUNC4(fp);

		*bufferptr = buffer;
		return length;
	} //end else
}