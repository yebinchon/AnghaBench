
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_stat {int oid; int stat; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int free (char*) ;
 int memset (int *,int ,int) ;
 int oidcpy (int *,struct object_id const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int st_add (unsigned long,int) ;
 char* xrealloc (char*,int ) ;
 size_t xsize_t (unsigned long) ;

__attribute__((used)) static int do_read_blob(const struct object_id *oid, struct oid_stat *oid_stat,
   size_t *size_out, char **data_out)
{
 enum object_type type;
 unsigned long sz;
 char *data;

 *size_out = 0;
 *data_out = ((void*)0);

 data = read_object_file(oid, &type, &sz);
 if (!data || type != OBJ_BLOB) {
  free(data);
  return -1;
 }

 if (oid_stat) {
  memset(&oid_stat->stat, 0, sizeof(oid_stat->stat));
  oidcpy(&oid_stat->oid, oid);
 }

 if (sz == 0) {
  free(data);
  return 0;
 }

 if (data[sz - 1] != '\n') {
  data = xrealloc(data, st_add(sz, 1));
  data[sz++] = '\n';
 }

 *size_out = xsize_t(sz);
 *data_out = data;

 return 1;
}
