
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {char* file; int always; } ;


 int FATAL ;
 int NINCLUDE ;
 int error (int ,char*) ;
 TYPE_1__* includelist ;
 scalar_t__ newstring (int *,int,int ) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;

void appendDirToIncludeList( char *dir )
{
 int i;
 char *fqdir;

 fqdir = (char *)newstring( (uchar *)includelist[NINCLUDE-1].file, 256, 0 );
 strcat( fqdir, "/" );
 strcat( fqdir, dir );


 for (i=NINCLUDE-2; i>=0; i--) {
  if (includelist[i].file &&
    !strcmp (includelist[i].file, fqdir)) {
   return;
  }
 }

 for (i=NINCLUDE-2; i>=0; i--) {
  if (includelist[i].file==((void*)0)) {
   includelist[i].always = 1;
   includelist[i].file = fqdir;
   break;
  }
 }
 if (i<0)
  error(FATAL, "Too many -I directives");
}
