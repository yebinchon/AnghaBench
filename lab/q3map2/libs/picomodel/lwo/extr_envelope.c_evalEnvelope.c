
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {float value; float time; int shape; struct TYPE_10__* next; struct TYPE_10__* prev; } ;
typedef TYPE_1__ lwKey ;
struct TYPE_11__ {int nkeys; int* behavior; TYPE_1__* key; } ;
typedef TYPE_2__ lwEnvelope ;
 int bez2 (TYPE_1__*,TYPE_1__*,float) ;
 int hermite (float,float*,float*,float*,float*) ;
 float incoming (TYPE_1__*,TYPE_1__*) ;
 float outgoing (TYPE_1__*,TYPE_1__*) ;
 float range (float,float,float,int*) ;

float evalEnvelope( lwEnvelope *env, float time ){
 lwKey *key0, *key1, *skey, *ekey;
 float t, h1, h2, h3, h4, in, out, offset = 0.0f;
 int noff;




 if ( env->nkeys == 0 ) {
  return 0.0f;
 }



 if ( env->nkeys == 1 ) {
  return env->key->value;
 }



 skey = ekey = env->key;
 while ( ekey->next ) ekey = ekey->next;



 if ( time < skey->time ) {
  switch ( env->behavior[ 0 ] )
  {
  case 134:
   return 0.0f;

  case 139:
   return skey->value;

  case 135:
   time = range( time, skey->time, ekey->time, ((void*)0) );
   break;

  case 136:
   time = range( time, skey->time, ekey->time, &noff );
   if ( noff % 2 ) {
    time = ekey->time - skey->time - time;
   }
   break;

  case 137:
   time = range( time, skey->time, ekey->time, &noff );
   offset = noff * ( ekey->value - skey->value );
   break;

  case 138:
   out = outgoing( skey, skey->next )
      / ( skey->next->time - skey->time );
   return out * ( time - skey->time ) + skey->value;
  }
 }



 else if ( time > ekey->time ) {
  switch ( env->behavior[ 1 ] )
  {
  case 134:
   return 0.0f;

  case 139:
   return ekey->value;

  case 135:
   time = range( time, skey->time, ekey->time, ((void*)0) );
   break;

  case 136:
   time = range( time, skey->time, ekey->time, &noff );
   if ( noff % 2 ) {
    time = ekey->time - skey->time - time;
   }
   break;

  case 137:
   time = range( time, skey->time, ekey->time, &noff );
   offset = noff * ( ekey->value - skey->value );
   break;

  case 138:
   in = incoming( ekey->prev, ekey )
     / ( ekey->time - ekey->prev->time );
   return in * ( time - ekey->time ) + ekey->value;
  }
 }



 key0 = env->key;
 while ( time > key0->next->time )
  key0 = key0->next;
 key1 = key0->next;



 if ( time == key0->time ) {
  return key0->value + offset;
 }
 else if ( time == key1->time ) {
  return key1->value + offset;
 }



 t = ( time - key0->time ) / ( key1->time - key0->time );



 switch ( key1->shape )
 {
 case 128:
 case 132:
 case 131:
  out = outgoing( key0, key1 );
  in = incoming( key0, key1 );
  hermite( t, &h1, &h2, &h3, &h4 );
  return h1 * key0->value + h2 * key1->value + h3 * out + h4 * in + offset;

 case 133:
  return bez2( key0, key1, time ) + offset;

 case 130:
  return key0->value + t * ( key1->value - key0->value ) + offset;

 case 129:
  return key0->value + offset;

 default:
  return offset;
 }
}
