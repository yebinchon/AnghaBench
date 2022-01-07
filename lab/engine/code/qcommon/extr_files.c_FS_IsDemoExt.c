
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int integer; } ;


 int ARRAY_LEN (int ) ;
 int DEMOEXT ;
 int Q_stricmpn (char*,int ,int) ;
 int atoi (char*) ;
 TYPE_2__* com_legacyprotocol ;
 TYPE_1__* com_protocol ;
 int* demo_protocols ;
 int qfalse ;
 int qtrue ;
 char* strrchr (char const*,char) ;

qboolean FS_IsDemoExt(const char *filename, int namelen)
{
 char *ext_test;
 int index, protocol;

 ext_test = strrchr(filename, '.');
 if(ext_test && !Q_stricmpn(ext_test + 1, DEMOEXT, ARRAY_LEN(DEMOEXT) - 1))
 {
  protocol = atoi(ext_test + ARRAY_LEN(DEMOEXT));

  if(protocol == com_protocol->integer)
   return qtrue;






  for(index = 0; demo_protocols[index]; index++)
  {
   if(demo_protocols[index] == protocol)
   return qtrue;
  }
 }

 return qfalse;
}
