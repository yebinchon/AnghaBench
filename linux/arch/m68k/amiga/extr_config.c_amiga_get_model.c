
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amiga_model_name ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void amiga_get_model(char *model)
{
 strcpy(model, amiga_model_name);
}
