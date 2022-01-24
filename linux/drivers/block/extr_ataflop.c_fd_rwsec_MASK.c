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
struct TYPE_4__ {int stretch; int spt; } ;
struct TYPE_3__ {unsigned char dma_lo; unsigned char dma_md; unsigned char dma_hi; int dma_mode_status; int fdc_acces_seccount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMABuffer ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EXTD_DMA ; 
 int FDCCMDADD_M ; 
 int FDCCMD_RDSEC ; 
 int FDCCMD_WRSEC ; 
 int /*<<< orphan*/  FDCREG_SECTOR ; 
 int /*<<< orphan*/  FDCREG_TRACK ; 
 unsigned int FDCSELREG_STP ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int MotorOn ; 
 int MultReadInProgress ; 
 int NeedSeek ; 
 unsigned long PhysDMABuffer ; 
 unsigned long PhysTrackBuffer ; 
 scalar_t__ ReqCmd ; 
 int /*<<< orphan*/  ReqData ; 
 int ReqSector ; 
 int /*<<< orphan*/  ReqSide ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SUDT ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int,int) ; 
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  fd_rwsec_done ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ read_track ; 
 int /*<<< orphan*/  readtrack_timer ; 
 unsigned short st_dma_ext_dmahi ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16( void )
{
	unsigned long paddr, flags;
	unsigned int  rwflag, old_motoron;
	unsigned int track;
	
	FUNC1(("fd_rwsec(), Sec=%d, Access=%c\n",ReqSector, ReqCmd == WRITE ? 'w' : 'r' ));
	if (ReqCmd == WRITE) {
		if (FUNC0(EXTD_DMA)) {
			paddr = FUNC15(ReqData);
		}
		else {
			FUNC6( ReqData, DMABuffer );
			paddr = PhysDMABuffer;
		}
		FUNC7( paddr, 512, 1 );
		rwflag = 0x100;
	}
	else {
		if (read_track)
			paddr = PhysTrackBuffer;
		else
			paddr = FUNC0(EXTD_DMA) ? 
				FUNC15(ReqData) : PhysDMABuffer;
		rwflag = 0;
	}

	FUNC8( ReqSide );
  
	/* Start sector of this operation */
	FUNC3( FDCREG_SECTOR, read_track ? 1 : ReqSector );
	FUNC4();
	/* Cheat for track if stretch != 0 */
	if (SUDT->stretch) {
		track = FUNC2( FDCREG_TRACK);
		FUNC4();
		FUNC3( FDCREG_TRACK, track >> SUDT->stretch);
	}
	FUNC14(25);
  
	/* Setup DMA */
	FUNC11(flags);
	dma_wd.dma_lo = (unsigned char)paddr;
	FUNC4();
	paddr >>= 8;
	dma_wd.dma_md = (unsigned char)paddr;
	FUNC4();
	paddr >>= 8;
	if (FUNC0(EXTD_DMA))
		st_dma_ext_dmahi = (unsigned short)paddr;
	else
		dma_wd.dma_hi = (unsigned char)paddr;
	FUNC4();
	FUNC10(flags);
  
	/* Clear FIFO and switch DMA to correct mode */  
	dma_wd.dma_mode_status = 0x90 | rwflag;  
	FUNC4();
	dma_wd.dma_mode_status = 0x90 | (rwflag ^ 0x100);  
	FUNC4();
	dma_wd.dma_mode_status = 0x90 | rwflag;
	FUNC4();
  
	/* How many sectors for DMA */
	dma_wd.fdc_acces_seccount = read_track ? SUDT->spt : 1;
  
	FUNC14(25);  
  
	/* Start operation */
	dma_wd.dma_mode_status = FDCSELREG_STP | rwflag;
	FUNC14(25);
	FUNC5( fd_rwsec_done );
	dma_wd.fdc_acces_seccount =
	  (FUNC9() |
	   (rwflag ? FDCCMD_WRSEC : (FDCCMD_RDSEC | (read_track ? FDCCMDADD_M : 0))));

	old_motoron = MotorOn;
	MotorOn = 1;
	NeedSeek = 1;
	/* wait for interrupt */

	if (read_track) {
		/* If reading a whole track, wait about one disk rotation and
		 * then check if all sectors are read. The FDC will even
		 * search for the first non-existent sector and need 1 sec to
		 * recognise that it isn't present :-(
		 */
		MultReadInProgress = 1;
		FUNC12(&readtrack_timer,
			  /* 1 rot. + 5 rot.s if motor was off  */
			  jiffies + HZ/5 + (old_motoron ? 0 : HZ));
	}
	FUNC13();
}