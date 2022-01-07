
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int shape; float value; float time; float* param; TYPE_1__* prev; int bias; int continuity; int tension; } ;
typedef TYPE_2__ lwKey ;
struct TYPE_5__ {float time; float value; } ;
 float fabs (float) ;

__attribute__((used)) static float outgoing( lwKey *key0, lwKey *key1 ){
 float a, b, d, t, out;

 switch ( key0->shape )
 {
 case 128:
  a = ( 1.0f - key0->tension )
   * ( 1.0f + key0->continuity )
   * ( 1.0f + key0->bias );
  b = ( 1.0f - key0->tension )
   * ( 1.0f - key0->continuity )
   * ( 1.0f - key0->bias );
  d = key1->value - key0->value;

  if ( key0->prev ) {
   t = ( key1->time - key0->time ) / ( key1->time - key0->prev->time );
   out = t * ( a * ( key0->value - key0->prev->value ) + b * d );
  }
  else{
   out = b * d;
  }
  break;

 case 130:
  d = key1->value - key0->value;
  if ( key0->prev ) {
   t = ( key1->time - key0->time ) / ( key1->time - key0->prev->time );
   out = t * ( key0->value - key0->prev->value + d );
  }
  else{
   out = d;
  }
  break;

 case 132:
 case 131:
  out = key0->param[ 1 ];
  if ( key0->prev ) {
   out *= ( key1->time - key0->time ) / ( key1->time - key0->prev->time );
  }
  break;

 case 133:
  out = key0->param[ 3 ] * ( key1->time - key0->time );
  if ( fabs( key0->param[ 2 ] ) > 1e-5f ) {
   out /= key0->param[ 2 ];
  }
  else{
   out *= 1e5f;
  }
  break;

 case 129:
 default:
  out = 0.0f;
  break;
 }

 return out;
}
