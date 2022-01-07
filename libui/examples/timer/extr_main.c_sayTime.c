
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int *) ;
 int e ;
 int time (int *) ;
 int uiMultilineEntryAppend (int ,char*) ;

int sayTime(void *data)
{
 time_t t;
 char *s;

 t = time(((void*)0));
 s = ctime(&t);

 uiMultilineEntryAppend(e, s);
 return 1;
}
