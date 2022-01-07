
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int gtk_main_quit () ;
 scalar_t__ iteration ;
 scalar_t__ stepsIteration ;
 int stepsQuit ;

__attribute__((used)) static gboolean quit(gpointer data)
{
 if (iteration == stepsIteration)
  stepsQuit = TRUE;

 else
  gtk_main_quit();
 return FALSE;
}
