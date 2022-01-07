
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fileName; } ;
typedef TYPE_1__ picoModel_t ;



char *PicoGetModelFileName( picoModel_t *model ){
 if ( model == ((void*)0) ) {
  return ((void*)0);
 }
 if ( model->fileName == ((void*)0) ) {
  return (char*) "";
 }
 return model->fileName;
}
