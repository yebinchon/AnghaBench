
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct image_desc {scalar_t__ out_size; scalar_t__ file_size; int * file_name; } ;


 int ERRS (char*,int *) ;
 int ERR_FATAL ;
 int ERR_INVALID_IMAGE ;
 int WARN (char*,int *,scalar_t__) ;
 scalar_t__ align (scalar_t__,int) ;
 int stat (int *,struct stat*) ;

int
image_stat_file(struct image_desc *desc)
{
 struct stat st;
 int err;

 if (desc->file_name == ((void*)0))
  return 0;

 err = stat(desc->file_name, &st);
 if (err){
  ERRS("stat failed on %s", desc->file_name);
  return ERR_FATAL;
 }

 if (st.st_size > desc->out_size) {
  WARN("file %s is too big, will be truncated to %d bytes\n",
   desc->file_name, desc->out_size);
  desc->file_size = desc->out_size;
  return ERR_INVALID_IMAGE;
 }


 desc->file_size = st.st_size;
 desc->out_size = align(desc->file_size,1);
 return 0;
}
