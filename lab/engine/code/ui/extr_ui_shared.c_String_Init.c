
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ getBindingBuf; } ;


 int Controls_GetConfig () ;
 TYPE_1__* DC ;
 int HASH_TABLE_SIZE ;
 int Item_SetupKeywordHash () ;
 int Menu_SetupKeywordHash () ;
 int UI_InitMemory () ;
 scalar_t__ menuCount ;
 scalar_t__ openMenuCount ;
 int ** strHandle ;
 scalar_t__ strHandleCount ;
 scalar_t__ strPoolIndex ;

void String_Init(void) {
 int i;
 for (i = 0; i < HASH_TABLE_SIZE; i++) {
  strHandle[i] = ((void*)0);
 }
 strHandleCount = 0;
 strPoolIndex = 0;
 menuCount = 0;
 openMenuCount = 0;
 UI_InitMemory();
 Item_SetupKeywordHash();
 Menu_SetupKeywordHash();
 if (DC && DC->getBindingBuf) {
  Controls_GetConfig();
 }
}
