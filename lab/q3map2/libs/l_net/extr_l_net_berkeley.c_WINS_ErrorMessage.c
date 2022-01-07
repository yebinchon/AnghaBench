
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int errnum; scalar_t__ errstr; } ;


 TYPE_1__* errlist ;

char *WINS_ErrorMessage( int error ){
 int search = 0;

 if ( !error ) {
  return "No error occurred";
 }

 for ( search = 0; errlist[search].errstr; search++ )
 {
  if ( error == errlist[search].errnum ) {
   return (char *)errlist[search].errstr;
  }
 }

 return "Unknown error";
}
