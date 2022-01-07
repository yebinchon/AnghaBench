
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int definehash; scalar_t__ skip; int * indentstack; int * defines; int * tokens; TYPE_2__* scriptstack; int filename; } ;
typedef TYPE_1__ source_t ;
struct TYPE_8__ {int * next; } ;
typedef TYPE_2__ script_t ;
typedef int define_t ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int DEFINEHASHSIZE ;
 int GetClearedMemory (int) ;
 scalar_t__ GetMemory (int) ;
 TYPE_2__* LoadScriptFile (char const*) ;
 int PC_AddGlobalDefinesToSource (TYPE_1__*) ;
 int PC_InitTokenHeap () ;
 int Q_strncpyz (int ,char const*,int) ;

source_t *LoadSourceFile(const char *filename)
{
 source_t *source;
 script_t *script;

 PC_InitTokenHeap();

 script = LoadScriptFile(filename);
 if (!script) return ((void*)0);

 script->next = ((void*)0);

 source = (source_t *) GetMemory(sizeof(source_t));
 Com_Memset(source, 0, sizeof(source_t));

 Q_strncpyz(source->filename, filename, sizeof(source->filename));
 source->scriptstack = script;
 source->tokens = ((void*)0);
 source->defines = ((void*)0);
 source->indentstack = ((void*)0);
 source->skip = 0;




 PC_AddGlobalDefinesToSource(source);
 return source;
}
