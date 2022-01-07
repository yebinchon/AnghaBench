
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__ line; int label; int file; scalar_t__ printed; struct TYPE_3__* next; } ;
typedef TYPE_1__ hunkblock_t ;
typedef int buf ;


 int Com_sprintf (char*,int,char*,...) ;
 int FS_Initialized () ;
 int FS_Write (char*,int ,int ) ;
 scalar_t__ Q_stricmp (int ,int ) ;
 TYPE_1__* hunkblocks ;
 int logfile ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strlen (char*) ;

void Hunk_SmallLog( void) {
 hunkblock_t *block, *block2;
 char buf[4096];
 int size, locsize, numBlocks;

 if (!logfile || !FS_Initialized())
  return;
 for (block = hunkblocks ; block; block = block->next) {
  block->printed = qfalse;
 }
 size = 0;
 numBlocks = 0;
 Com_sprintf(buf, sizeof(buf), "\r\n================\r\nHunk Small log\r\n================\r\n");
 FS_Write(buf, strlen(buf), logfile);
 for (block = hunkblocks; block; block = block->next) {
  if (block->printed) {
   continue;
  }
  locsize = block->size;
  for (block2 = block->next; block2; block2 = block2->next) {
   if (block->line != block2->line) {
    continue;
   }
   if (Q_stricmp(block->file, block2->file)) {
    continue;
   }
   size += block2->size;
   locsize += block2->size;
   block2->printed = qtrue;
  }




  size += block->size;
  numBlocks++;
 }
 Com_sprintf(buf, sizeof(buf), "%d Hunk memory\r\n", size);
 FS_Write(buf, strlen(buf), logfile);
 Com_sprintf(buf, sizeof(buf), "%d hunk blocks\r\n", numBlocks);
 FS_Write(buf, strlen(buf), logfile);
}
