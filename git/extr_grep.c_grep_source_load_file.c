
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
struct grep_source {char* identifier; char* buf; size_t size; } ;


 scalar_t__ ENOENT ;
 int O_RDONLY ;
 int S_ISREG (int ) ;
 int _ (char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int error_errno (int ,char const*) ;
 int free (char*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int open (char const*,int ) ;
 scalar_t__ read_in_full (int,char*,size_t) ;
 char* xmallocz (size_t) ;
 size_t xsize_t (scalar_t__) ;

__attribute__((used)) static int grep_source_load_file(struct grep_source *gs)
{
 const char *filename = gs->identifier;
 struct stat st;
 char *data;
 size_t size;
 int i;

 if (lstat(filename, &st) < 0) {
 err_ret:
  if (errno != ENOENT)
   error_errno(_("failed to stat '%s'"), filename);
  return -1;
 }
 if (!S_ISREG(st.st_mode))
  return -1;
 size = xsize_t(st.st_size);
 i = open(filename, O_RDONLY);
 if (i < 0)
  goto err_ret;
 data = xmallocz(size);
 if (st.st_size != read_in_full(i, data, size)) {
  error_errno(_("'%s': short read"), filename);
  close(i);
  free(data);
  return -1;
 }
 close(i);

 gs->buf = data;
 gs->size = size;
 return 0;
}
