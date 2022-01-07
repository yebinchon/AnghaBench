
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_7__ {int highlightMegabytes; int direction; int treeView; int highlightThreads; } ;
struct TYPE_6__ {double percent_cpu; double percent_mem; int indent; int m_resident; int m_size; int priority; scalar_t__ st_uid; int user; int tty_nr; int tpgid; int tgid; int time; int state; int starttime_show; int session; int processor; TYPE_2__* settings; int ppid; int pid; int pgrp; int nlwp; int nice; int minflt; int majflt; int showChildren; } ;
typedef int RichString ;
typedef int ProcessField ;
typedef TYPE_1__ Process ;



 int* CRT_colors ;
 char** CRT_treeStr ;
 size_t DEFAULT_COLOR ;






 int PAGE_SIZE_KB ;







 size_t PROCESS_BASENAME ;
 size_t PROCESS_D_STATE ;
 size_t PROCESS_HIGH_PRIORITY ;
 size_t PROCESS_LOW_PRIORITY ;
 size_t PROCESS_R_STATE ;
 size_t PROCESS_SHADOW ;
 size_t PROCESS_THREAD ;
 size_t PROCESS_THREAD_BASENAME ;
 size_t PROCESS_TREE ;
 int Process_colorNumber (int *,int ,int) ;
 int Process_getuid ;
 int Process_humanNumber (int *,int,int) ;
 int Process_isThread (TYPE_1__*) ;
 int Process_pidFormat ;
 int Process_printTime (int *,int ) ;
 int Process_writeCommand (TYPE_1__*,int,int,int *) ;
 int RichString_append (int *,int,char*) ;




 int Settings_cpuId (TYPE_2__*,int ) ;



 size_t TREE_STR_BEND ;
 size_t TREE_STR_OPEN ;
 size_t TREE_STR_RTEE ;
 size_t TREE_STR_SHUT ;
 size_t TREE_STR_TEND ;
 size_t TREE_STR_VERT ;


 int major (int ) ;
 int minor (int ) ;
 int snprintf (char*,int,char*,...) ;
 int xSnprintf (char*,int,char*,...) ;

void Process_writeField(Process* this, RichString* str, ProcessField field) {
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int baseattr = CRT_colors[PROCESS_BASENAME];
   int n = sizeof(buffer) - 1;
   bool coloring = this->settings->highlightMegabytes;

   switch (field) {
   case 143: {
      if (this->percent_cpu > 999.9) {
         xSnprintf(buffer, n, "%4u ", (unsigned int)this->percent_cpu);
      } else if (this->percent_cpu > 99.9) {
         xSnprintf(buffer, n, "%3u. ", (unsigned int)this->percent_cpu);
      } else {
         xSnprintf(buffer, n, "%4.1f ", this->percent_cpu);
      }
      break;
   }
   case 142: {
      if (this->percent_mem > 99.9) {
         xSnprintf(buffer, n, "100. ");
      } else {
         xSnprintf(buffer, n, "%4.1f ", this->percent_mem);
      }
      break;
   }
   case 150: {
      if (this->settings->highlightThreads && Process_isThread(this)) {
         attr = CRT_colors[PROCESS_THREAD];
         baseattr = CRT_colors[PROCESS_THREAD_BASENAME];
      }
      if (!this->settings->treeView || this->indent == 0) {
         Process_writeCommand(this, attr, baseattr, str);
         return;
      } else {
         char* buf = buffer;
         int maxIndent = 0;
         bool lastItem = (this->indent < 0);
         int indent = (this->indent < 0 ? -this->indent : this->indent);

         for (int i = 0; i < 32; i++)
            if (indent & (1U << i))
               maxIndent = i+1;
          for (int i = 0; i < maxIndent - 1; i++) {
            int written, ret;
            if (indent & (1 << i))
               ret = snprintf(buf, n, "%s  ", CRT_treeStr[TREE_STR_VERT]);
            else
               ret = snprintf(buf, n, "   ");
            if (ret < 0 || ret >= n) {
               written = n;
            } else {
               written = ret;
            }
            buf += written;
            n -= written;
         }
         const char* draw = CRT_treeStr[lastItem ? (this->settings->direction == 1 ? TREE_STR_BEND : TREE_STR_TEND) : TREE_STR_RTEE];
         xSnprintf(buf, n, "%s%s ", draw, this->showChildren ? CRT_treeStr[TREE_STR_SHUT] : CRT_treeStr[TREE_STR_OPEN] );
         RichString_append(str, CRT_colors[PROCESS_TREE], buffer);
         Process_writeCommand(this, attr, baseattr, str);
         return;
      }
   }
   case 149: Process_colorNumber(str, this->majflt, coloring); return;
   case 148: Process_colorNumber(str, this->minflt, coloring); return;
   case 147: Process_humanNumber(str, this->m_resident * PAGE_SIZE_KB, coloring); return;
   case 146: Process_humanNumber(str, this->m_size * PAGE_SIZE_KB, coloring); return;
   case 145: {
      xSnprintf(buffer, n, "%3ld ", this->nice);
      attr = this->nice < 0 ? CRT_colors[PROCESS_HIGH_PRIORITY]
           : this->nice > 0 ? CRT_colors[PROCESS_LOW_PRIORITY]
           : attr;
      break;
   }
   case 144: xSnprintf(buffer, n, "%4ld ", this->nlwp); break;
   case 141: xSnprintf(buffer, n, Process_pidFormat, this->pgrp); break;
   case 140: xSnprintf(buffer, n, Process_pidFormat, this->pid); break;
   case 139: xSnprintf(buffer, n, Process_pidFormat, this->ppid); break;
   case 138: {
      if(this->priority <= -100)
         xSnprintf(buffer, n, " RT ");
      else
         xSnprintf(buffer, n, "%3ld ", this->priority);
      break;
   }
   case 137: xSnprintf(buffer, n, "%3d ", Settings_cpuId(this->settings, this->processor)); break;
   case 136: xSnprintf(buffer, n, Process_pidFormat, this->session); break;
   case 135: xSnprintf(buffer, n, "%s", this->starttime_show); break;
   case 134: {
      xSnprintf(buffer, n, "%c ", this->state);
      switch(this->state) {
          case 'R':
              attr = CRT_colors[PROCESS_R_STATE];
              break;
          case 'D':
              attr = CRT_colors[PROCESS_D_STATE];
              break;
      }
      break;
   }
   case 133: xSnprintf(buffer, n, "%4d ", this->st_uid); break;
   case 131: Process_printTime(str, this->time); return;
   case 132: xSnprintf(buffer, n, Process_pidFormat, this->tgid); break;
   case 130: xSnprintf(buffer, n, Process_pidFormat, this->tpgid); break;
   case 129: xSnprintf(buffer, n, "%3u:%3u ", major(this->tty_nr), minor(this->tty_nr)); break;
   case 128: {
      if (Process_getuid != (int) this->st_uid)
         attr = CRT_colors[PROCESS_SHADOW];
      if (this->user) {
         xSnprintf(buffer, n, "%-9s ", this->user);
      } else {
         xSnprintf(buffer, n, "%-9d ", this->st_uid);
      }
      if (buffer[9] != '\0') {
         buffer[9] = ' ';
         buffer[10] = '\0';
      }
      break;
   }
   default:
      xSnprintf(buffer, n, "- ");
   }
   RichString_append(str, attr, buffer);
}
