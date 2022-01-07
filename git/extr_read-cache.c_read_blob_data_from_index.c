
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__** cache; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int oid; int name; } ;


 int OBJ_BLOB ;
 int ce_stage (TYPE_1__*) ;
 int free (void*) ;
 int index_name_pos (struct index_state const*,char const*,int) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 int strcmp (int ,char const*) ;
 int strlen (char const*) ;

void *read_blob_data_from_index(const struct index_state *istate,
    const char *path, unsigned long *size)
{
 int pos, len;
 unsigned long sz;
 enum object_type type;
 void *data;

 len = strlen(path);
 pos = index_name_pos(istate, path, len);
 if (pos < 0) {




  int i;
  for (i = -pos - 1;
       (pos < 0 && i < istate->cache_nr &&
        !strcmp(istate->cache[i]->name, path));
       i++)
   if (ce_stage(istate->cache[i]) == 2)
    pos = i;
 }
 if (pos < 0)
  return ((void*)0);
 data = read_object_file(&istate->cache[pos]->oid, &type, &sz);
 if (!data || type != OBJ_BLOB) {
  free(data);
  return ((void*)0);
 }
 if (size)
  *size = sz;
 return data;
}
