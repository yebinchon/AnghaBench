
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct csys_block {int file_size; int * file_name; } ;


 int ERRS (char*,int *) ;
 int ERR_FATAL ;
 int stat (int *,struct stat*) ;

int
block_stat_file(struct csys_block *block)
{
 struct stat st;
 int err;

 if (block->file_name == ((void*)0))
  return 0;

 err = stat(block->file_name, &st);
 if (err){
  ERRS("stat failed on %s", block->file_name);
  return ERR_FATAL;
 }

 block->file_size = st.st_size;
 return 0;
}
