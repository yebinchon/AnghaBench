
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_7__* name; } ;
struct TYPE_13__ {TYPE_7__* string; } ;
struct TYPE_12__ {TYPE_7__* data; TYPE_7__* server; TYPE_7__* name; } ;
struct TYPE_11__ {TYPE_7__* suffix; TYPE_7__* prefix; } ;
struct TYPE_10__ {TYPE_7__* name; } ;
struct TYPE_15__ {TYPE_5__ cycle; TYPE_4__ xref; TYPE_3__ anim; TYPE_2__ seq; TYPE_1__ still; } ;
struct TYPE_16__ {int type; TYPE_6__ source; scalar_t__ pfilter; scalar_t__ ifilter; } ;
typedef TYPE_7__ lwClip ;
typedef int ListFreeFunc ;







 int _pico_free (TYPE_7__*) ;
 scalar_t__ lwFreePlugin ;
 int lwListFree (void*,int ) ;

void lwFreeClip( lwClip *clip ){
 if ( clip ) {
  lwListFree( (void*) clip->ifilter, (ListFreeFunc) lwFreePlugin );
  lwListFree( (void*) clip->pfilter, (ListFreeFunc) lwFreePlugin );

  switch ( clip->type ) {
  case 129:
   _pico_free( clip->source.still.name );
   break;

  case 131:
   _pico_free( clip->source.seq.prefix );
   _pico_free( clip->source.seq.suffix );
   break;

  case 132:
   _pico_free( clip->source.anim.name );
   _pico_free( clip->source.anim.server );
   _pico_free( clip->source.anim.data );
   break;

  case 128:
   _pico_free( clip->source.xref.string );
   break;

  case 130:
   _pico_free( clip->source.cycle.name );
   break;

  default:
   break;
  }

  _pico_free( clip );
 }
}
