#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
typedef  int /*<<< orphan*/  pakbuf ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  errorMessage ;
struct TYPE_6__ {int downloadSize; size_t downloadCurrentBlock; size_t downloadClientBlock; size_t downloadXmitBlock; int downloadCount; int* downloadBlockSize; int downloadSendTime; scalar_t__* downloadBlocks; void* downloadEOF; scalar_t__ download; scalar_t__* downloadName; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int time; TYPE_1__* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASEGAME ; 
 int /*<<< orphan*/  BASETA ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,scalar_t__*) ; 
 int DLF_ENABLE ; 
 int DLF_NO_UDP ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC9 () ; 
 int FUNC10 (scalar_t__*,scalar_t__*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_DOWNLOAD_BLKSIZE ; 
 size_t MAX_DOWNLOAD_WINDOW ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  NUM_ID_PAKS ; 
 int /*<<< orphan*/  NUM_TA_PAKS ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 void* qfalse ; 
 void* qtrue ; 
 char* FUNC19 (char*,char) ; 
 TYPE_4__* sv_allowDownload ; 
 TYPE_3__* sv_pure ; 
 int /*<<< orphan*/  svc_download ; 
 TYPE_2__ svs ; 

int FUNC20(client_t *cl, msg_t *msg)
{
	int curindex;
	int unreferenced = 1;
	char errorMessage[1024];
	char pakbuf[MAX_QPATH], *pakptr;
	int numRefPaks;

	if (!*cl->downloadName)
		return 0;	// Nothing being downloaded

	if(!cl->download)
	{
		qboolean idPack = qfalse;
		#ifndef STANDALONE
		qboolean missionPack = qfalse;
		#endif
	
 		// Chop off filename extension.
		FUNC5(pakbuf, sizeof(pakbuf), "%s", cl->downloadName);
		pakptr = FUNC19(pakbuf, '.');
		
		if(pakptr)
		{
			*pakptr = '\0';

			// Check for pk3 filename extension
			if(!FUNC17(pakptr + 1, "pk3"))
			{
				const char *referencedPaks = FUNC9();

				// Check whether the file appears in the list of referenced
				// paks to prevent downloading of arbitrary files.
				FUNC2(referencedPaks);
				numRefPaks = FUNC0();

				for(curindex = 0; curindex < numRefPaks; curindex++)
				{
					if(!FUNC7(FUNC1(curindex), pakbuf))
					{
						unreferenced = 0;

						// now that we know the file is referenced,
						// check whether it's legal to download it.
#ifndef STANDALONE
						missionPack = FUNC11(pakbuf, BASETA, NUM_TA_PAKS);
						idPack = missionPack;
#endif
						idPack = idPack || FUNC11(pakbuf, BASEGAME, NUM_ID_PAKS);

						break;
					}
				}
			}
		}

		cl->download = 0;

		// We open the file here
		if ( !(sv_allowDownload->integer & DLF_ENABLE) ||
			(sv_allowDownload->integer & DLF_NO_UDP) ||
			idPack || unreferenced ||
			( cl->downloadSize = FUNC10( cl->downloadName, &cl->download ) ) < 0 ) {
			// cannot auto-download file
			if(unreferenced)
			{
				FUNC4("clientDownload: %d : \"%s\" is not referenced and cannot be downloaded.\n", (int) (cl - svs.clients), cl->downloadName);
				FUNC5(errorMessage, sizeof(errorMessage), "File \"%s\" is not referenced and cannot be downloaded.", cl->downloadName);
			}
			else if (idPack) {
				FUNC4("clientDownload: %d : \"%s\" cannot download id pk3 files\n", (int) (cl - svs.clients), cl->downloadName);
#ifndef STANDALONE
				if(missionPack)
				{
					FUNC5(errorMessage, sizeof(errorMessage), "Cannot autodownload Team Arena file \"%s\"\n"
									"The Team Arena mission pack can be found in your local game store.", cl->downloadName);
				}
				else
#endif
				{
					FUNC5(errorMessage, sizeof(errorMessage), "Cannot autodownload id pk3 file \"%s\"", cl->downloadName);
				}
			}
			else if ( !(sv_allowDownload->integer & DLF_ENABLE) ||
				(sv_allowDownload->integer & DLF_NO_UDP) ) {

				FUNC4("clientDownload: %d : \"%s\" download disabled\n", (int) (cl - svs.clients), cl->downloadName);
				if (sv_pure->integer) {
					FUNC5(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
										"You will need to get this file elsewhere before you "
										"can connect to this pure server.\n", cl->downloadName);
				} else {
					FUNC5(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
                    "The server you are connecting to is not a pure server, "
                    "set autodownload to No in your settings and you might be "
                    "able to join the game anyway.\n", cl->downloadName);
				}
			} else {
        // NOTE TTimo this is NOT supposed to happen unless bug in our filesystem scheme?
        //   if the pk3 is referenced, it must have been found somewhere in the filesystem
				FUNC4("clientDownload: %d : \"%s\" file not found on server\n", (int) (cl - svs.clients), cl->downloadName);
				FUNC5(errorMessage, sizeof(errorMessage), "File \"%s\" not found on server for autodownloading.\n", cl->downloadName);
			}
			FUNC12( msg, svc_download );
			FUNC15( msg, 0 ); // client is expecting block zero
			FUNC14( msg, -1 ); // illegal file size
			FUNC16( msg, errorMessage );

			*cl->downloadName = 0;
			
			if(cl->download)
				FUNC6(cl->download);
			
			return 1;
		}
 
		FUNC4( "clientDownload: %d : beginning \"%s\"\n", (int) (cl - svs.clients), cl->downloadName );
		
		// Init
		cl->downloadCurrentBlock = cl->downloadClientBlock = cl->downloadXmitBlock = 0;
		cl->downloadCount = 0;
		cl->downloadEOF = qfalse;
	}

	// Perform any reads that we need to
	while (cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW &&
		cl->downloadSize != cl->downloadCount) {

		curindex = (cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW);

		if (!cl->downloadBlocks[curindex])
			cl->downloadBlocks[curindex] = FUNC18(MAX_DOWNLOAD_BLKSIZE);

		cl->downloadBlockSize[curindex] = FUNC8( cl->downloadBlocks[curindex], MAX_DOWNLOAD_BLKSIZE, cl->download );

		if (cl->downloadBlockSize[curindex] < 0) {
			// EOF right now
			cl->downloadCount = cl->downloadSize;
			break;
		}

		cl->downloadCount += cl->downloadBlockSize[curindex];

		// Load in next block
		cl->downloadCurrentBlock++;
	}

	// Check to see if we have eof condition and add the EOF block
	if (cl->downloadCount == cl->downloadSize &&
		!cl->downloadEOF &&
		cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW) {

		cl->downloadBlockSize[cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW] = 0;
		cl->downloadCurrentBlock++;

		cl->downloadEOF = qtrue;  // We have added the EOF block
	}

	if (cl->downloadClientBlock == cl->downloadCurrentBlock)
		return 0; // Nothing to transmit

	// Write out the next section of the file, if we have already reached our window,
	// automatically start retransmitting
	if (cl->downloadXmitBlock == cl->downloadCurrentBlock)
	{
		// We have transmitted the complete window, should we start resending?
		if (svs.time - cl->downloadSendTime > 1000)
			cl->downloadXmitBlock = cl->downloadClientBlock;
		else
			return 0;
	}

	// Send current block
	curindex = (cl->downloadXmitBlock % MAX_DOWNLOAD_WINDOW);

	FUNC12( msg, svc_download );
	FUNC15( msg, cl->downloadXmitBlock );

	// block zero is special, contains file size
	if ( cl->downloadXmitBlock == 0 )
		FUNC14( msg, cl->downloadSize );

	FUNC15( msg, cl->downloadBlockSize[curindex] );

	// Write the block
	if(cl->downloadBlockSize[curindex])
		FUNC13(msg, cl->downloadBlocks[curindex], cl->downloadBlockSize[curindex]);

	FUNC3( "clientDownload: %d : writing block %d\n", (int) (cl - svs.clients), cl->downloadXmitBlock );

	// Move on to the next block
	// It will get sent with next snap shot.  The rate will keep us in line.
	cl->downloadXmitBlock++;
	cl->downloadSendTime = svs.time;

	return 1;
}