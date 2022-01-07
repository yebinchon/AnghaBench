
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct walker {scalar_t__ get_verbosely; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct packed_git {unsigned char* hash; } ;
struct http_pack_request {int url; TYPE_1__* slot; int * lst; } ;
struct alt_base {int packs; int base; } ;
struct TYPE_3__ {struct slot_results* results; } ;


 scalar_t__ CURLE_OK ;
 char* curl_errorstr ;
 int error (char*,...) ;
 scalar_t__ fetch_indices (struct walker*,struct alt_base*) ;
 struct packed_git* find_sha1_pack (unsigned char*,int ) ;
 int finish_http_pack_request (struct http_pack_request*) ;
 int fprintf (int ,char*,char*) ;
 char* hash_to_hex (unsigned char*) ;
 struct http_pack_request* new_http_pack_request (struct packed_git*,int ) ;
 int release_http_pack_request (struct http_pack_request*) ;
 int run_active_slot (TYPE_1__*) ;
 scalar_t__ start_active_slot (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static int http_fetch_pack(struct walker *walker, struct alt_base *repo, unsigned char *sha1)
{
 struct packed_git *target;
 int ret;
 struct slot_results results;
 struct http_pack_request *preq;

 if (fetch_indices(walker, repo))
  return -1;
 target = find_sha1_pack(sha1, repo->packs);
 if (!target)
  return -1;

 if (walker->get_verbosely) {
  fprintf(stderr, "Getting pack %s\n",
   hash_to_hex(target->hash));
  fprintf(stderr, " which contains %s\n",
   hash_to_hex(sha1));
 }

 preq = new_http_pack_request(target, repo->base);
 if (preq == ((void*)0))
  goto abort;
 preq->lst = &repo->packs;
 preq->slot->results = &results;

 if (start_active_slot(preq->slot)) {
  run_active_slot(preq->slot);
  if (results.curl_result != CURLE_OK) {
   error("Unable to get pack file %s\n%s", preq->url,
         curl_errorstr);
   goto abort;
  }
 } else {
  error("Unable to start request");
  goto abort;
 }

 ret = finish_http_pack_request(preq);
 release_http_pack_request(preq);
 if (ret)
  return ret;

 return 0;

abort:
 return -1;
}
