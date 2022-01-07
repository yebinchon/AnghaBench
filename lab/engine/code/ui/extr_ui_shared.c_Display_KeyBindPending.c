
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int g_waitingForKey ;

qboolean Display_KeyBindPending(void) {
 return g_waitingForKey;
}
