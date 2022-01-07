
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char uint32_t ;
struct strbuf {int dummy; } ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int rawsz; int (* final_fn ) (unsigned char*,int *) ;} ;


 int GIT_MAX_RAWSZ ;
 int put_be32 (unsigned char*,size_t) ;
 int strbuf_add (struct strbuf*,unsigned char*,int) ;
 int stub1 (unsigned char*,int *) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void write_eoie_extension(struct strbuf *sb, git_hash_ctx *eoie_context, size_t offset)
{
 uint32_t buffer;
 unsigned char hash[GIT_MAX_RAWSZ];


 put_be32(&buffer, offset);
 strbuf_add(sb, &buffer, sizeof(uint32_t));


 the_hash_algo->final_fn(hash, eoie_context);
 strbuf_add(sb, hash, the_hash_algo->rawsz);
}
