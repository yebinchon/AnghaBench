
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int shape; float value; float time; float* param; TYPE_1__* next; int bias; int continuity; int tension; } ;
typedef TYPE_2__ lwKey ;
struct TYPE_5__ {float time; float value; } ;
 float fabs (float) ;

__attribute__((used)) static float incoming( lwKey *key0, lwKey *key1 ){
 float a, b, d, t, in;

 switch ( key1->shape )
 {
 case 130:
  d = key1->value - key0->value;
  if ( key1->next ) {
   t = ( key1->time - key0->time ) / ( key1->next->time - key0->time );
   in = t * ( key1->next->value - key1->value + d );
  }
  else{
   in = d;
  }
  break;

 case 128:
  a = ( 1.0f - key1->tension )
   * ( 1.0f - key1->continuity )
   * ( 1.0f + key1->bias );
  b = ( 1.0f - key1->tension )
   * ( 1.0f + key1->continuity )
   * ( 1.0f - key1->bias );
  d = key1->value - key0->value;

  if ( key1->next ) {
   t = ( key1->time - key0->time ) / ( key1->next->time - key0->time );
   in = t * ( b * ( key1->next->value - key1->value ) + a * d );
  }
  else{
   in = a * d;
  }
  break;

 case 132:
 case 131:
  in = key1->param[ 0 ];
  if ( key1->next ) {
   in *= ( key1->time - key0->time ) / ( key1->next->time - key0->time );
  }
  break;
  return in;

 case 133:
  in = key1->param[ 1 ] * ( key1->time - key0->time );
  if ( fabs( key1->param[ 0 ] ) > 1e-5f ) {
   in /= key1->param[ 0 ];
  }
  else{
   in *= 1e5f;
  }
  break;

 case 129:
 default:
  in = 0.0f;
  break;
 }

 return in;
}
