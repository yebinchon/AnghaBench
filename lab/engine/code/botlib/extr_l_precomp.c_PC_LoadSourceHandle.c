
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int source_t ;


 int * LoadSourceFile (char const*) ;
 int MAX_SOURCEFILES ;
 int PS_SetBaseFolder (char*) ;
 int ** sourceFiles ;

int PC_LoadSourceHandle(const char *filename)
{
 source_t *source;
 int i;

 for (i = 1; i < MAX_SOURCEFILES; i++)
 {
  if (!sourceFiles[i])
   break;
 }
 if (i >= MAX_SOURCEFILES)
  return 0;
 PS_SetBaseFolder("");
 source = LoadSourceFile(filename);
 if (!source)
  return 0;
 sourceFiles[i] = source;
 return i;
}
