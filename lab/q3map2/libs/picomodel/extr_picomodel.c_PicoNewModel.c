
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numFrames; int maxs; int mins; } ;
typedef TYPE_1__ picoModel_t ;


 TYPE_1__* _pico_alloc (int) ;
 int _pico_zero_bounds (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

picoModel_t *PicoNewModel( void ){
 picoModel_t *model;


 model = _pico_alloc( sizeof( picoModel_t ) );
 if ( model == ((void*)0) ) {
  return ((void*)0);
 }


 memset( model, 0, sizeof( picoModel_t ) );


 _pico_zero_bounds( model->mins, model->maxs );


 model->numFrames = 1;


 return model;
}
