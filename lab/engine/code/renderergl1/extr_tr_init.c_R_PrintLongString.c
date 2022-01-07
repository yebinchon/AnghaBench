
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_2__ {int (* Printf ) (int ,char*,char*) ;} ;


 int PRINT_ALL ;
 int Q_strncpyz (char*,char const*,int) ;
 TYPE_1__ ri ;
 int strlen (char const*) ;
 int stub1 (int ,char*,char*) ;

void R_PrintLongString(const char *string) {
 char buffer[1024];
 const char *p;
 int size = strlen(string);

 p = string;
 while(size > 0)
 {
  Q_strncpyz(buffer, p, sizeof (buffer) );
  ri.Printf( PRINT_ALL, "%s", buffer );
  p += 1023;
  size -= 1023;
 }
}
