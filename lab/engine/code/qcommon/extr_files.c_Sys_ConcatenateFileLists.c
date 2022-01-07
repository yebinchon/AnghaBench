
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Sys_CountFileList (char**) ;
 int Z_Free (char**) ;
 char** Z_Malloc (int) ;

__attribute__((used)) static char** Sys_ConcatenateFileLists( char **list0, char **list1 )
{
 int totalLength = 0;
 char** cat = ((void*)0), **dst, **src;

 totalLength += Sys_CountFileList(list0);
 totalLength += Sys_CountFileList(list1);


 dst = cat = Z_Malloc( ( totalLength + 1 ) * sizeof( char* ) );


 if (list0)
 {
  for (src = list0; *src; src++, dst++)
   *dst = *src;
 }
 if (list1)
 {
  for (src = list1; *src; src++, dst++)
   *dst = *src;
 }


 *dst = ((void*)0);



 if (list0) Z_Free( list0 );
 if (list1) Z_Free( list1 );

 return cat;
}
