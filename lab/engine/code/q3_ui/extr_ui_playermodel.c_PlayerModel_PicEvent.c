
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int id; } ;
typedef TYPE_7__ menucommon_s ;
struct TYPE_14__ {int string; } ;
struct TYPE_13__ {int string; } ;
struct TYPE_16__ {int modelpage; char** modelnames; int selectedmodel; TYPE_6__ skinname; TYPE_5__ modelname; int modelskin; TYPE_4__* picbuttons; TYPE_2__* pics; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_12__ {TYPE_3__ generic; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_1__ generic; } ;


 int ID_PLAYERPIC0 ;
 scalar_t__ LOW_MEMORY ;
 int MAX_MODELSPERPAGE ;
 int PLAYERGRID_COLS ;
 int PLAYERGRID_ROWS ;
 int PlayerModel_UpdateModel () ;
 int QMF_HIGHLIGHT ;
 int QMF_PULSEIFFOCUS ;
 int QM_ACTIVATED ;
 int Q_strncpyz (int ,char*,int) ;
 int Q_strupr (int ) ;
 TYPE_8__ s_playermodel ;
 int strcat (int ,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 scalar_t__ trap_MemoryRemaining () ;

__attribute__((used)) static void PlayerModel_PicEvent( void* ptr, int event )
{
 int modelnum;
 int maxlen;
 char* buffptr;
 char* pdest;
 int i;

 if (event != QM_ACTIVATED)
  return;

 for (i=0; i<PLAYERGRID_ROWS*PLAYERGRID_COLS; i++)
 {

   s_playermodel.pics[i].generic.flags &= ~QMF_HIGHLIGHT;
   s_playermodel.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
 }


 i = ((menucommon_s*)ptr)->id - ID_PLAYERPIC0;
 s_playermodel.pics[i].generic.flags |= QMF_HIGHLIGHT;
 s_playermodel.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;


 modelnum = s_playermodel.modelpage*MAX_MODELSPERPAGE + i;
 buffptr = s_playermodel.modelnames[modelnum] + strlen("models/players/");
 pdest = strstr(buffptr,"icon_");
 if (pdest)
 {

  Q_strncpyz(s_playermodel.modelskin,buffptr,pdest-buffptr+1);
  strcat(s_playermodel.modelskin,pdest + 5);


  maxlen = pdest-buffptr;
  if (maxlen > 16)
   maxlen = 16;
  Q_strncpyz( s_playermodel.modelname.string, buffptr, maxlen );
  Q_strupr( s_playermodel.modelname.string );


  maxlen = strlen(pdest+5)+1;
  if (maxlen > 16)
   maxlen = 16;
  Q_strncpyz( s_playermodel.skinname.string, pdest+5, maxlen );
  Q_strupr( s_playermodel.skinname.string );

  s_playermodel.selectedmodel = modelnum;

  if( trap_MemoryRemaining() > LOW_MEMORY ) {
   PlayerModel_UpdateModel();
  }
 }
}
