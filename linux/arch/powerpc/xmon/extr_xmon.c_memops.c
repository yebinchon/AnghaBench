
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcount ;
 scalar_t__ mdest ;
 int mdiffs ;
 int memdiffs (unsigned char*,unsigned char*,int ,int ) ;
 int memmove (void*,void*,int ) ;
 int memset (void*,scalar_t__,int ) ;
 scalar_t__ msrc ;
 scalar_t__ mval ;
 int printf (char*) ;
 int scanhex (void*) ;
 char termch ;
 int xmon_is_ro ;
 char* xmon_ro_msg ;

__attribute__((used)) static void
memops(int cmd)
{
 scanhex((void *)&mdest);
 if( termch != '\n' )
  termch = 0;
 scanhex((void *)(cmd == 's'? &mval: &msrc));
 if( termch != '\n' )
  termch = 0;
 scanhex((void *)&mcount);
 switch( cmd ){
 case 'm':
  if (xmon_is_ro) {
   printf(xmon_ro_msg);
   break;
  }
  memmove((void *)mdest, (void *)msrc, mcount);
  break;
 case 's':
  if (xmon_is_ro) {
   printf(xmon_ro_msg);
   break;
  }
  memset((void *)mdest, mval, mcount);
  break;
 case 'd':
  if( termch != '\n' )
   termch = 0;
  scanhex((void *)&mdiffs);
  memdiffs((unsigned char *)mdest, (unsigned char *)msrc, mcount, mdiffs);
  break;
 }
}
