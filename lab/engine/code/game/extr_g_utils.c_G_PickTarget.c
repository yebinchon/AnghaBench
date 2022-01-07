
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int FOFS (char*) ;
 int * G_Find (int *,int ,char*) ;
 int G_Printf (char*,...) ;
 int MAXCHOICES ;
 int rand () ;

gentity_t *G_PickTarget (char *targetname)
{
 gentity_t *ent = ((void*)0);
 int num_choices = 0;
 gentity_t *choice[MAXCHOICES];

 if (!targetname)
 {
  G_Printf("G_PickTarget called with NULL targetname\n");
  return ((void*)0);
 }

 while(1)
 {
  ent = G_Find (ent, FOFS(targetname), targetname);
  if (!ent)
   break;
  choice[num_choices++] = ent;
  if (num_choices == MAXCHOICES)
   break;
 }

 if (!num_choices)
 {
  G_Printf("G_PickTarget: target %s not found\n", targetname);
  return ((void*)0);
 }

 return choice[rand() % num_choices];
}
