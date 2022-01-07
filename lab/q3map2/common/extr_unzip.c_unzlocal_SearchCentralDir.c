
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;
typedef int uInt ;
typedef int FILE ;


 int BUFREADCOMMENT ;
 int SEEK_END ;
 int SEEK_SET ;
 size_t fread (unsigned char*,int ,int,int *) ;
 size_t fread_ql (unsigned char*,int ,int,int *) ;
 int free (unsigned char*) ;
 scalar_t__ fseek (int *,int,int ) ;
 int ftell (int *) ;
 scalar_t__ safe_malloc (int) ;
 int unz_GAME_QL ;

__attribute__((used)) static uLong unzlocal_SearchCentralDir(FILE *fin)
{
 unsigned char* buf;
 uLong uSizeFile;
 uLong uBackRead;
 uLong uMaxBack=0xffff;
 uLong uPosFound=0;

 if (fseek(fin,0,SEEK_END) != 0)
  return 0;


 uSizeFile = ftell( fin );

 if (uMaxBack>uSizeFile)
  uMaxBack = uSizeFile;

 buf = (unsigned char*)safe_malloc(BUFREADCOMMENT+4);
 if (buf==((void*)0))
  return 0;

 uBackRead = 4;
 while (uBackRead<uMaxBack)
 {
  uLong uReadSize,uReadPos ;
  int i;
  size_t gametype;

  if (uBackRead+BUFREADCOMMENT>uMaxBack)
   uBackRead = uMaxBack;
  else
   uBackRead+=BUFREADCOMMENT;
  uReadPos = uSizeFile-uBackRead ;

  uReadSize = ((BUFREADCOMMENT+4) < (uSizeFile-uReadPos)) ?
                     (BUFREADCOMMENT+4) : (uSizeFile-uReadPos);
  if (fseek(fin,uReadPos,SEEK_SET)!=0)
   break;

  if (unz_GAME_QL == 1) {
   gametype = fread_ql(buf,(uInt)uReadSize,1,fin);
  } else {
   gametype = fread(buf,(uInt)uReadSize,1,fin);
  }

  if (gametype!=1)
   break;

                for (i=(int)uReadSize-3; (i--)>0;)
   if (((*(buf+i))==0x50) && ((*(buf+i+1))==0x4b) &&
    ((*(buf+i+2))==0x05) && ((*(buf+i+3))==0x06))
   {
    uPosFound = uReadPos+i;
    break;
   }

  if (uPosFound!=0)
   break;
 }
 free(buf);
 return uPosFound;
}
