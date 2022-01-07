
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_header {scalar_t__ hdr_signature; int hdr_version; } ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int rawsz; int (* final_fn ) (unsigned char*,int *) ;int (* update_fn ) (int *,struct cache_header const*,int) ;int (* init_fn ) (int *) ;} ;


 int CACHE_SIGNATURE ;
 int GIT_MAX_RAWSZ ;
 int INDEX_FORMAT_LB ;
 int INDEX_FORMAT_UB ;
 int _ (char*) ;
 int error (int ,...) ;
 int hasheq (unsigned char*,unsigned char*) ;
 scalar_t__ htonl (int ) ;
 int ntohl (int ) ;
 int stub1 (int *) ;
 int stub2 (int *,struct cache_header const*,int) ;
 int stub3 (unsigned char*,int *) ;
 TYPE_1__* the_hash_algo ;
 int verify_index_checksum ;

__attribute__((used)) static int verify_hdr(const struct cache_header *hdr, unsigned long size)
{
 git_hash_ctx c;
 unsigned char hash[GIT_MAX_RAWSZ];
 int hdr_version;

 if (hdr->hdr_signature != htonl(CACHE_SIGNATURE))
  return error(_("bad signature 0x%08x"), hdr->hdr_signature);
 hdr_version = ntohl(hdr->hdr_version);
 if (hdr_version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < hdr_version)
  return error(_("bad index version %d"), hdr_version);

 if (!verify_index_checksum)
  return 0;

 the_hash_algo->init_fn(&c);
 the_hash_algo->update_fn(&c, hdr, size - the_hash_algo->rawsz);
 the_hash_algo->final_fn(hash, &c);
 if (!hasheq(hash, (unsigned char *)hdr + size - the_hash_algo->rawsz))
  return error(_("bad index file sha1 signature"));
 return 0;
}
