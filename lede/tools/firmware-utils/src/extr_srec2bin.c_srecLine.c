
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* bit32u ;


 int DispHex (void*) ;
 int SRLerrorout (char*,char*) ;
 int TRUE ;
 int binRecOutByte (void*,char) ;
 int binRecOutProgramStart (void*) ;
 int checksum (char*,int) ;
 int cur_line ;
 void* gh (char*,int) ;
 int s1s2s3_total ;
 int strlen (char*) ;

int srecLine(char *pSrecLine)
{
    char *scp,ch;
    int itmp,count,dat;
    bit32u adr;
    static bit32u RecordCounter=0;

    cur_line++;
    scp=pSrecLine;

    if (*pSrecLine!='S')
      return(SRLerrorout("Not an Srecord file",scp));
    pSrecLine++;
    if (strlen(pSrecLine)<4)
      return(SRLerrorout("Srecord too short",scp));

    ch=*pSrecLine++;

    count=gh(pSrecLine,2);

    pSrecLine += 2;



     RecordCounter++;
     DispHex(RecordCounter);

    if ((count*2) != strlen(pSrecLine)) return(SRLerrorout("Count field larger than record",scp));

    if (!checksum(pSrecLine, count)) return(SRLerrorout("Bad Checksum",scp));

    switch(ch)
    {
        case '0': if (count<3) return(SRLerrorout("Invalid Srecord count field",scp));
                  itmp=gh(pSrecLine,4); pSrecLine+=4; count-=2;
                  if (itmp) return(SRLerrorout("Srecord 1 address not zero",scp));
        break;
        case '1': if (count<3) return(SRLerrorout("Invalid Srecord count field",scp));
                  return(SRLerrorout("Srecord Not valid for MIPS",scp));
        break;
        case '2': if (count<4) return(SRLerrorout("Invalid Srecord count field",scp));
                  return(SRLerrorout("Srecord Not valid for MIPS",scp));
        break;
        case '3': if (count<5) return(SRLerrorout("Invalid Srecord count field",scp));
                  adr=gh(pSrecLine,8); pSrecLine+=8; count-=4;
                  count--;
                  while(count)
                  {
                    dat=gh(pSrecLine,2); pSrecLine+=2; count--;
                    binRecOutByte(adr, (char) (dat & 0xFF));
                    adr++;
                  }
                  s1s2s3_total++;
        break;
        case '4': return(SRLerrorout("Invalid Srecord type",scp));
        break;
        case '5': if (count<3) return(SRLerrorout("Invalid Srecord count field",scp));
                  itmp=gh(pSrecLine,4); pSrecLine+=4; count-=2;
                  if (itmp|=s1s2s3_total) return(SRLerrorout("Incorrect number of S3 Record processed",scp));
        break;
        case '6': return(SRLerrorout("Invalid Srecord type",scp));
        break;
        case '7':
                  if (count<5) return(SRLerrorout("Invalid Srecord count field",scp));
                  adr=gh(pSrecLine,8); pSrecLine+=8; count-=4;
                  if (count!=1) return(SRLerrorout("Invalid Srecord count field",scp));
                  binRecOutProgramStart(adr);
        break;
        case '8': if (count<4) return(SRLerrorout("Invalid Srecord count field",scp));
                  return(SRLerrorout("Srecord Not valid for MIPS",scp));
        break;
        case '9': if (count<3) return(SRLerrorout("Invalid Srecord count field",scp));
                  return(SRLerrorout("Srecord Not valid for MIPS",scp));
        break;
        default:
        break;
    }
    return(TRUE);
}
