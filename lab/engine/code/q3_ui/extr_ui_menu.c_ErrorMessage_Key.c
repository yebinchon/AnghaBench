
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfxHandle_t ;


 int UI_MainMenu () ;
 int menu_null_sound ;
 int trap_Cvar_Set (char*,char*) ;

sfxHandle_t ErrorMessage_Key(int key)
{
 trap_Cvar_Set( "com_errorMessage", "" );
 UI_MainMenu();
 return (menu_null_sound);
}
