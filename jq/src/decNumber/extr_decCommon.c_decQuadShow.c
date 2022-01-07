
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* bytes; } ;
typedef TYPE_1__ decFloat ;
typedef int Int ;


 int DECBYTES ;
 int DECSTRING ;
 int decFloatToString (TYPE_1__ const*,char*) ;
 int printf (char*,char const*,char*,char*) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

void decFloatShow(const decFloat *df, const char *tag) {
  char hexbuf[DECBYTES*2+DECBYTES/4+1];
  char buff[DECSTRING];
  Int i, j=0;

  for (i=0; i<DECBYTES; i++) {



      sprintf(&hexbuf[j], "%02x", df->bytes[i]);

    j+=2;

    if ((i+1)%4==0) {strcpy(&hexbuf[j], " "); j++;}
    }
  decFloatToString(df, buff);
  printf(">%s> %s [big-endian]  %s\n", tag, hexbuf, buff);
  return;
  }
