
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ iteration (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;

int uiMainStep(int wait)
{
 gboolean block;

 block = FALSE;
 if (wait)
  block = TRUE;
 return (*iteration)(block) == FALSE;
}
