
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_handle_t ;


 int NVRAM_RO ;
 int NVRAM_STAGING ;
 int free (char*) ;
 char* nvram_find_mtd () ;
 char* nvram_find_staging () ;
 int * nvram_open (char*,int ) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static nvram_handle_t * nvram_open_rdonly(void)
{
 char *file = nvram_find_staging();

 if( file == ((void*)0) )
  file = nvram_find_mtd();

 if( file != ((void*)0) ) {
  nvram_handle_t *h = nvram_open(file, NVRAM_RO);
  if( strcmp(file, NVRAM_STAGING) )
   free(file);
  return h;
 }

 return ((void*)0);
}
