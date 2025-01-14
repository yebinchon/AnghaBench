
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tag {size_t pack_id; int oid; struct tag* next_tag; } ;
struct packed_git {char* pack_name; } ;
struct object_id {int hash; } ;
struct branch {size_t pack_id; int oid; struct branch* table_next_branch; } ;
struct TYPE_7__ {scalar_t__ depth; scalar_t__ offset; int data; } ;
struct TYPE_6__ {int pack_name; int pack_fd; int hash; } ;


 int FREE_AND_NULL (TYPE_1__*) ;
 struct packed_git* add_packed_git (char*,int ,int) ;
 struct packed_git** all_packs ;
 struct branch** branch_table ;
 int branch_table_sz ;
 int clear_delta_base_cache () ;
 int close (int ) ;
 int close_pack_windows (TYPE_1__*) ;
 int create_index () ;
 int die (char*,char*) ;
 int fflush (scalar_t__) ;
 int finalize_hashfile (int ,int ,int ) ;
 struct tag* first_tag ;
 int fixup_pack_header_footer (int ,int ,int ,scalar_t__,int ,int ) ;
 int fprintf (scalar_t__,char*,char*) ;
 int fputc (char,scalar_t__) ;
 int free (char*) ;
 int install_packed_git (int ,struct packed_git*) ;
 int invalidate_pack_id (size_t) ;
 char* keep_pack (int ) ;
 TYPE_3__ last_blob ;
 int loosen_small_pack (TYPE_1__*) ;
 scalar_t__ object_count ;
 char* oid_to_hex (int *) ;
 TYPE_1__* pack_data ;
 scalar_t__ pack_edges ;
 int pack_file ;
 size_t pack_id ;
 int pack_size ;
 int strbuf_release (int *) ;
 int strlen (char*) ;
 int the_repository ;
 int unlink_or_warn (int ) ;
 scalar_t__ unpack_limit ;

__attribute__((used)) static void end_packfile(void)
{
 static int running;

 if (running || !pack_data)
  return;

 running = 1;
 clear_delta_base_cache();
 if (object_count) {
  struct packed_git *new_p;
  struct object_id cur_pack_oid;
  char *idx_name;
  int i;
  struct branch *b;
  struct tag *t;

  close_pack_windows(pack_data);
  finalize_hashfile(pack_file, cur_pack_oid.hash, 0);
  fixup_pack_header_footer(pack_data->pack_fd, pack_data->hash,
      pack_data->pack_name, object_count,
      cur_pack_oid.hash, pack_size);

  if (object_count <= unpack_limit) {
   if (!loosen_small_pack(pack_data)) {
    invalidate_pack_id(pack_id);
    goto discard_pack;
   }
  }

  close(pack_data->pack_fd);
  idx_name = keep_pack(create_index());


  new_p = add_packed_git(idx_name, strlen(idx_name), 1);
  if (!new_p)
   die("core git rejected index %s", idx_name);
  all_packs[pack_id] = new_p;
  install_packed_git(the_repository, new_p);
  free(idx_name);


  if (pack_edges) {
   fprintf(pack_edges, "%s:", new_p->pack_name);
   for (i = 0; i < branch_table_sz; i++) {
    for (b = branch_table[i]; b; b = b->table_next_branch) {
     if (b->pack_id == pack_id)
      fprintf(pack_edges, " %s",
       oid_to_hex(&b->oid));
    }
   }
   for (t = first_tag; t; t = t->next_tag) {
    if (t->pack_id == pack_id)
     fprintf(pack_edges, " %s",
      oid_to_hex(&t->oid));
   }
   fputc('\n', pack_edges);
   fflush(pack_edges);
  }

  pack_id++;
 }
 else {
discard_pack:
  close(pack_data->pack_fd);
  unlink_or_warn(pack_data->pack_name);
 }
 FREE_AND_NULL(pack_data);
 running = 0;


 strbuf_release(&last_blob.data);
 last_blob.offset = 0;
 last_blob.depth = 0;
}
