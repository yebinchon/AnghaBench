#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {char* eventHandlerState; } ;
typedef  TYPE_1__ Panel ;
typedef  TYPE_2__ ListItem ;
typedef  int /*<<< orphan*/  HandlerResult ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_LOOP ; 
 int ERR ; 
 int /*<<< orphan*/  HANDLED ; 
 int /*<<< orphan*/  IGNORED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (int,int) ; 

HandlerResult FUNC7(Panel* this, int ch) {
   int size = FUNC2(this);
   if (!this->eventHandlerState)
      this->eventHandlerState = FUNC6(100, sizeof(char));
   char* buffer = this->eventHandlerState;

   if (ch > 0 && ch < 255 && FUNC3(ch)) {
      int len = FUNC4(buffer);
      if (len < 99) {
         buffer[len] = ch;
         buffer[len+1] = '\0';
      }
      for (int try = 0; try < 2; try++) {
         len = FUNC4(buffer);
         for (int i = 0; i < size; i++) {
            char* cur = ((ListItem*) FUNC0(this, i))->value;
            while (*cur == ' ') cur++;
            if (FUNC5(cur, buffer, len) == 0) {
               FUNC1(this, i);
               return HANDLED;
            }
         }
         // if current word did not match,
         // retry considering the character the start of a new word.
         buffer[0] = ch;
         buffer[1] = '\0';
      }
      return HANDLED;
   } else if (ch != ERR) {
      buffer[0] = '\0';
   }
   if (ch == 13) {
      return BREAK_LOOP;
   }
   return IGNORED;
}