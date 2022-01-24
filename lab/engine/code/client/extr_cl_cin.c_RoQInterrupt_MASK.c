#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int byte ;
struct TYPE_4__ {int* file; scalar_t__ linbuf; scalar_t__* qStatus; } ;
struct TYPE_3__ {int RoQFrameSize; scalar_t__ RoQPlayed; scalar_t__ ROQSize; scalar_t__ holdAtEnd; scalar_t__ status; int roq_id; int numQuads; char roqF0; char roqF1; int samplesPerLine; int ysize; int roq_flags; int inMemory; scalar_t__ looping; int /*<<< orphan*/  lastTime; int /*<<< orphan*/  startTime; int /*<<< orphan*/  silent; int /*<<< orphan*/  dirty; scalar_t__ screenDelta; scalar_t__ buf; int /*<<< orphan*/  (* VQ0 ) (int*,int*) ;int /*<<< orphan*/ * t; int /*<<< orphan*/  normalBuffer0; int /*<<< orphan*/  (* VQ1 ) (int*,int*) ;int /*<<< orphan*/  iFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FMV_EOF ; 
 void* FMV_IDLE ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ) ; 
#define  ROQ_CODEBOOK 135 
#define  ROQ_PACKET 134 
#define  ROQ_QUAD_HANG 133 
#define  ROQ_QUAD_INFO 132 
#define  ROQ_QUAD_JPEG 131 
#define  ROQ_QUAD_VQ 130 
 int FUNC4 (int*,short*,int,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC5 (int*,short*,int,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (char,char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int*,float,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
#define  ZA_SOUND_MONO 129 
#define  ZA_SOUND_STEREO 128 
 TYPE_2__ cin ; 
 TYPE_1__* cinTable ; 
 size_t currentHandle ; 
 int /*<<< orphan*/  FUNC10 (int*,unsigned short) ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/ * s_rawend ; 
 int /*<<< orphan*/  s_soundtime ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*) ; 

__attribute__((used)) static void FUNC15(void)
{
	byte				*framedata;
        short		sbuf[32768];
        int		ssize;
        
	if (currentHandle < 0) return;

	FUNC3( cin.file, cinTable[currentHandle].RoQFrameSize+8, cinTable[currentHandle].iFile );
	if ( cinTable[currentHandle].RoQPlayed >= cinTable[currentHandle].ROQSize ) { 
		if (cinTable[currentHandle].holdAtEnd==qfalse) {
			if (cinTable[currentHandle].looping) {
				FUNC7();
			} else {
				cinTable[currentHandle].status = FMV_EOF;
			}
		} else {
			cinTable[currentHandle].status = FMV_IDLE;
		}
		return; 
	}

	framedata = cin.file;
//
// new frame is ready
//
redump:
	switch(cinTable[currentHandle].roq_id) 
	{
		case	ROQ_QUAD_VQ:
			if ((cinTable[currentHandle].numQuads&1)) {
				cinTable[currentHandle].normalBuffer0 = cinTable[currentHandle].t[1];
				FUNC6( cinTable[currentHandle].roqF0, cinTable[currentHandle].roqF1 );
				cinTable[currentHandle].VQ1( (byte *)cin.qStatus[1], framedata);
				cinTable[currentHandle].buf = 	cin.linbuf + cinTable[currentHandle].screenDelta;
			} else {
				cinTable[currentHandle].normalBuffer0 = cinTable[currentHandle].t[0];
				FUNC6( cinTable[currentHandle].roqF0, cinTable[currentHandle].roqF1 );
				cinTable[currentHandle].VQ0( (byte *)cin.qStatus[0], framedata );
				cinTable[currentHandle].buf = 	cin.linbuf;
			}
			if (cinTable[currentHandle].numQuads == 0) {		// first frame
				FUNC2(cin.linbuf+cinTable[currentHandle].screenDelta, cin.linbuf, cinTable[currentHandle].samplesPerLine*cinTable[currentHandle].ysize);
			}
			cinTable[currentHandle].numQuads++;
			cinTable[currentHandle].dirty = qtrue;
			break;
		case	ROQ_CODEBOOK:
			FUNC10( framedata, (unsigned short)cinTable[currentHandle].roq_flags );
			break;
		case	ZA_SOUND_MONO:
			if (!cinTable[currentHandle].silent) {
				ssize = FUNC4( framedata, sbuf, cinTable[currentHandle].RoQFrameSize, 0, (unsigned short)cinTable[currentHandle].roq_flags);
                                FUNC8(0, ssize, 22050, 2, 1, (byte *)sbuf, 1.0f, -1);
			}
			break;
		case	ZA_SOUND_STEREO:
			if (!cinTable[currentHandle].silent) {
				if (cinTable[currentHandle].numQuads == -1) {
					FUNC9();
					s_rawend[0] = s_soundtime;
				}
				ssize = FUNC5( framedata, sbuf, cinTable[currentHandle].RoQFrameSize, 0, (unsigned short)cinTable[currentHandle].roq_flags);
                                FUNC8(0, ssize, 22050, 2, 2, (byte *)sbuf, 1.0f, -1);
			}
			break;
		case	ROQ_QUAD_INFO:
			if (cinTable[currentHandle].numQuads == -1) {
				FUNC11( framedata );
				FUNC12( 0, 0 );
				cinTable[currentHandle].startTime = cinTable[currentHandle].lastTime = FUNC0();
			}
			if (cinTable[currentHandle].numQuads != 1) cinTable[currentHandle].numQuads = 0;
			break;
		case	ROQ_PACKET:
			cinTable[currentHandle].inMemory = cinTable[currentHandle].roq_flags;
			cinTable[currentHandle].RoQFrameSize = 0;           // for header
			break;
		case	ROQ_QUAD_HANG:
			cinTable[currentHandle].RoQFrameSize = 0;
			break;
		case	ROQ_QUAD_JPEG:
			break;
		default:
			cinTable[currentHandle].status = FMV_EOF;
			break;
	}	
//
// read in next frame data
//
	if ( cinTable[currentHandle].RoQPlayed >= cinTable[currentHandle].ROQSize ) { 
		if (cinTable[currentHandle].holdAtEnd==qfalse) {
			if (cinTable[currentHandle].looping) {
				FUNC7();
			} else {
				cinTable[currentHandle].status = FMV_EOF;
			}
		} else {
			cinTable[currentHandle].status = FMV_IDLE;
		}
		return; 
	}
	
	framedata		 += cinTable[currentHandle].RoQFrameSize;
	cinTable[currentHandle].roq_id		 = framedata[0] + framedata[1]*256;
	cinTable[currentHandle].RoQFrameSize = framedata[2] + framedata[3]*256 + framedata[4]*65536;
	cinTable[currentHandle].roq_flags	 = framedata[6] + framedata[7]*256;
	cinTable[currentHandle].roqF0		 = (signed char)framedata[7];
	cinTable[currentHandle].roqF1		 = (signed char)framedata[6];

	if (cinTable[currentHandle].RoQFrameSize>65536||cinTable[currentHandle].roq_id==0x1084) {
		FUNC1("roq_size>65536||roq_id==0x1084\n");
		cinTable[currentHandle].status = FMV_EOF;
		if (cinTable[currentHandle].looping) {
			FUNC7();
		}
		return;
	}
	if (cinTable[currentHandle].inMemory && (cinTable[currentHandle].status != FMV_EOF)) { cinTable[currentHandle].inMemory--; framedata += 8; goto redump; }
//
// one more frame hits the dust
//
//	assert(cinTable[currentHandle].RoQFrameSize <= 65536);
//	r = FS_Read( cin.file, cinTable[currentHandle].RoQFrameSize+8, cinTable[currentHandle].iFile );
	cinTable[currentHandle].RoQPlayed	+= cinTable[currentHandle].RoQFrameSize+8;
}