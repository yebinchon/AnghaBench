
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ optc; scalar_t__ argc; } ;
struct TYPE_10__ {TYPE_1__* opts; } ;
struct TYPE_9__ {int parsed; TYPE_5__* opt_args; TYPE_5__ glb_args; } ;
struct TYPE_8__ {int index; int * p_next; } ;
struct TYPE_7__ {int flags; scalar_t__ max; scalar_t__ min; } ;
typedef TYPE_2__ CMDLINE_ARG ;


 int CMDLINE_ERR_ERROR ;
 int CMDLINE_ERR_FEWARG ;
 int CMDLINE_ERR_ILLOPT ;
 int CMDLINE_ERR_INVKEY ;
 int CMDLINE_ERR_MANYARG ;
 int CMDLINE_ERR_NOMEM ;
 int CMDLINE_ERR_OK ;
 int CMDLINE_ERR_OPTMIS ;
 int CMDLINE_OPTFLAG_ALLOW ;
 int CMDLINE_OPTFLAG_MANDAT ;
 int CMDLINE_TRUE ;
 scalar_t__ calloc (int,int) ;
 int cmdline_argadd (TYPE_5__*,TYPE_2__*) ;
 TYPE_4__ cmdline_cfg ;
 TYPE_3__ cmdline_data ;
 int strlen (char*) ;

int cmdline_read(int argc, char* argv[])
{
 int i, option=0;


 for( i = 1; i < argc; i++ )
 {

  if( *argv[i] == '-' )
  {

   if( strlen(argv[i]) != 2 )
   {

    return(CMDLINE_ERR_ERROR);
   }


   if( ((*(argv[i] + 1)) < 'a') || ((*(argv[i] + 1)) > 'z') )
   {

    return(CMDLINE_ERR_INVKEY);
   }


   option = (*(argv[i] + 1)) - 'a';
   if((option < 0) || (option > 25)) return(CMDLINE_ERR_INVKEY);


   if( cmdline_cfg.opts[option].flags & CMDLINE_OPTFLAG_ALLOW )
   {

    cmdline_data.opt_args[option].optc++;
    continue;
   }
   else
   {

    return(CMDLINE_ERR_ILLOPT);
   }
  }
  else
  {

   CMDLINE_ARG* p_arg;


   p_arg = (CMDLINE_ARG*)calloc(1,sizeof(CMDLINE_ARG));
   if( p_arg== ((void*)0) )
   {

    return(CMDLINE_ERR_NOMEM);
   }


   p_arg->index = i;
   p_arg->p_next = ((void*)0);


   if( (option < 0)
    || (cmdline_data.opt_args[option].argc == cmdline_cfg.opts[option].max)
    )
   {

    cmdline_argadd(&(cmdline_data.glb_args), p_arg);
    continue;
   }
   else
   {

    if( cmdline_data.opt_args[option].argc == cmdline_cfg.opts[option].max )
    {

     return(CMDLINE_ERR_MANYARG);
    }
    else
    {

     cmdline_argadd(&(cmdline_data.opt_args[option]), p_arg);
     continue;
    }
   }
  }
 }




 for( i=0; i < 26; i++ )
 {

  if(cmdline_cfg.opts[i].flags & CMDLINE_OPTFLAG_ALLOW)
  {

   if(cmdline_cfg.opts[i].flags & CMDLINE_OPTFLAG_MANDAT)
   {

    if(cmdline_data.opt_args[i].optc == 0)
    {

     return(CMDLINE_ERR_OPTMIS);
    }
    else
    {

     if(cmdline_data.opt_args[i].argc < cmdline_cfg.opts[i].min)
     {

      return(CMDLINE_ERR_FEWARG);
     }
     else
     {

      continue;
     }
    }
   }
   else
   {

    if(cmdline_data.opt_args[i].optc == 0)
    {

     continue;
    }
    else
    {

     if(cmdline_data.opt_args[i].argc < cmdline_cfg.opts[i].min)
     {

      return(CMDLINE_ERR_FEWARG);
     }
     else
     {

      continue;
     }
    }
   }
  }
  else
  {


  }
 }


 cmdline_data.parsed = CMDLINE_TRUE;
 return(CMDLINE_ERR_OK);
}
