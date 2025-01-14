
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct packet_reader {char* line; } ;
struct ls_refs_data {int peel; int symrefs; int prefixes; } ;
struct argv_array {int dummy; } ;
typedef int data ;


 scalar_t__ PACKET_READ_FLUSH ;
 int argv_array_clear (int *) ;
 int argv_array_push (int *,char const*) ;
 int for_each_namespaced_ref (int ,struct ls_refs_data*) ;
 int git_config (int ,int *) ;
 int head_ref_namespaced (int ,struct ls_refs_data*) ;
 int ls_refs_config ;
 int memset (struct ls_refs_data*,int ,int) ;
 int packet_flush (int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int send_ref ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char*,char const*) ;

int ls_refs(struct repository *r, struct argv_array *keys,
     struct packet_reader *request)
{
 struct ls_refs_data data;

 memset(&data, 0, sizeof(data));

 git_config(ls_refs_config, ((void*)0));

 while (packet_reader_read(request) != PACKET_READ_FLUSH) {
  const char *arg = request->line;
  const char *out;

  if (!strcmp("peel", arg))
   data.peel = 1;
  else if (!strcmp("symrefs", arg))
   data.symrefs = 1;
  else if (skip_prefix(arg, "ref-prefix ", &out))
   argv_array_push(&data.prefixes, out);
 }

 head_ref_namespaced(send_ref, &data);
 for_each_namespaced_ref(send_ref, &data);
 packet_flush(1);
 argv_array_clear(&data.prefixes);
 return 0;
}
