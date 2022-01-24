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
typedef  int bit32u ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AddressCurrent ; 
 void* BigEndian ; 
 void* FALSE ; 
 void* RecStart ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * fOut ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ inputline ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 

int FUNC10(int argc,char *argv[],int verbose)
{
    int i,rlen,sts;
    FILE *fp;
    char ac;
    char buff[256];
    bit32u TAG_BIG     = 0xDEADBE42;
    bit32u TAG_LITTLE  = 0xFEEDFA42;

    bit32u Tag;

  
    if(argc < 3)
    {
      FUNC6("\nError: <srec2bin <srec input file> <bin output file>\n\n");
      return(0);
    }
  
    if (argc > 3) BigEndian=TRUE; else BigEndian=FALSE;

    if (BigEndian)
        Tag = TAG_BIG;
    else
        Tag = TAG_LITTLE;

    if (verbose)
       FUNC6("\nEndian: %s, Tag is 0x%8X\n",(BigEndian)?"BIG":"LITTLE", Tag);

    fp = FUNC5(argv[1],"rt");

    if (fp==NULL)
    {
      FUNC6("\nError: Opening input file, %s.", argv[1]);
      return(0);
    }
  
    fOut = FUNC5( argv[2], "wb");
    
    if (fOut==NULL)
    {
      FUNC6("\nError: Opening Output file, %s.", argv[2]);
      if(fp) FUNC4(fp);
      return(0);
    }
 
    RecStart = FALSE;

    AddressCurrent = 0xFFFFFFFFL;

    // Setup Tag 
  
    FUNC3("Tag", Tag);

    FUNC1(Tag);

  
    inputline=0;
    sts=TRUE;

    rlen = FUNC7(fp,buff,sizeof buff);

    while( (sts) && (rlen != -1))
    {
        if (FUNC9(buff))
        {
            sts &= FUNC8(buff);
            FUNC0();
        }
       rlen = FUNC7(fp,buff,sizeof buff);
    }

  
  //  printf("PC: 0x%08X, Length 0x%08X, Tag 0x%08X\n", ProgramStart, RecLength, TAG_LITTLE);
  
    FUNC2();

    if(fp) FUNC4(fp);
    if(fOut) FUNC4(fOut);

    return(1);
}