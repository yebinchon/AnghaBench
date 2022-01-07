
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int * fs_searchpaths ;

qboolean FS_Initialized( void ) {
 return (fs_searchpaths != ((void*)0));
}
