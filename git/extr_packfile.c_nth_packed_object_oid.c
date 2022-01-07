
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
typedef struct object_id {int hash; } const object_id ;


 int hashcpy (int ,unsigned char const*) ;
 unsigned char* nth_packed_object_sha1 (struct packed_git*,int ) ;

const struct object_id *nth_packed_object_oid(struct object_id *oid,
           struct packed_git *p,
           uint32_t n)
{
 const unsigned char *hash = nth_packed_object_sha1(p, n);
 if (!hash)
  return ((void*)0);
 hashcpy(oid->hash, hash);
 return oid;
}
