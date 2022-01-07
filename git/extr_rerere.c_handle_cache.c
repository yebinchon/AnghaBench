
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * output; int getline; } ;
struct rerere_io_mem {TYPE_1__ io; int input; } ;
struct rerere_io {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int oid; int name; } ;
struct TYPE_9__ {unsigned long size; scalar_t__ ptr; int * member_0; } ;
typedef TYPE_2__ mmfile_t ;
struct TYPE_10__ {int size; int ptr; int member_1; int * member_0; } ;
typedef TYPE_3__ mmbuffer_t ;
typedef int io ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int ce_namelen (struct cache_entry const*) ;
 int ce_stage (struct cache_entry const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (scalar_t__) ;
 int handle_path (unsigned char*,struct rerere_io*,int) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int ll_merge (TYPE_3__*,char const*,TYPE_2__*,int *,TYPE_2__*,char*,TYPE_2__*,char*,struct index_state*,int *) ;
 int ll_merge_marker_size (struct index_state*,char const*) ;
 scalar_t__ memcmp (int ,char const*,int) ;
 int memset (struct rerere_io_mem*,int ,int) ;
 scalar_t__ read_object_file (int *,int*,unsigned long*) ;
 int rerere_mem_getline ;
 int strbuf_attach (int *,int ,int ,int ) ;
 int strbuf_init (int *,int ) ;
 int strbuf_release (int *) ;
 int strlen (char const*) ;
 scalar_t__ xstrdup (char*) ;

__attribute__((used)) static int handle_cache(struct index_state *istate,
   const char *path, unsigned char *hash, const char *output)
{
 mmfile_t mmfile[3] = {{((void*)0)}};
 mmbuffer_t result = {((void*)0), 0};
 const struct cache_entry *ce;
 int pos, len, i, has_conflicts;
 struct rerere_io_mem io;
 int marker_size = ll_merge_marker_size(istate, path);




 len = strlen(path);
 pos = index_name_pos(istate, path, len);
 if (0 <= pos)
  return -1;
 pos = -pos - 1;

 while (pos < istate->cache_nr) {
  enum object_type type;
  unsigned long size;

  ce = istate->cache[pos++];
  if (ce_namelen(ce) != len || memcmp(ce->name, path, len))
   break;
  i = ce_stage(ce) - 1;
  if (!mmfile[i].ptr) {
   mmfile[i].ptr = read_object_file(&ce->oid, &type,
        &size);
   mmfile[i].size = size;
  }
 }
 for (i = 0; i < 3; i++)
  if (!mmfile[i].ptr && !mmfile[i].size)
   mmfile[i].ptr = xstrdup("");





 ll_merge(&result, path, &mmfile[0], ((void*)0),
   &mmfile[1], "ours",
   &mmfile[2], "theirs",
   istate, ((void*)0));
 for (i = 0; i < 3; i++)
  free(mmfile[i].ptr);

 memset(&io, 0, sizeof(io));
 io.io.getline = rerere_mem_getline;
 if (output)
  io.io.output = fopen(output, "w");
 else
  io.io.output = ((void*)0);
 strbuf_init(&io.input, 0);
 strbuf_attach(&io.input, result.ptr, result.size, result.size);





 has_conflicts = handle_path(hash, (struct rerere_io *)&io, marker_size);
 strbuf_release(&io.input);
 if (io.io.output)
  fclose(io.io.output);
 return has_conflicts;
}
