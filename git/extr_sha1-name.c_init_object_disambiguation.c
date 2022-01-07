
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_3__ {unsigned char* hash; } ;
struct disambiguate_state {unsigned char* hex_pfx; int len; struct repository* repo; TYPE_1__ bin_pfx; } ;
struct TYPE_4__ {int hexsz; } ;


 int MINIMUM_ABBREV ;
 int memset (struct disambiguate_state*,int ,int) ;
 int prepare_alt_odb (struct repository*) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static int init_object_disambiguation(struct repository *r,
          const char *name, int len,
          struct disambiguate_state *ds)
{
 int i;

 if (len < MINIMUM_ABBREV || len > the_hash_algo->hexsz)
  return -1;

 memset(ds, 0, sizeof(*ds));

 for (i = 0; i < len ;i++) {
  unsigned char c = name[i];
  unsigned char val;
  if (c >= '0' && c <= '9')
   val = c - '0';
  else if (c >= 'a' && c <= 'f')
   val = c - 'a' + 10;
  else if (c >= 'A' && c <='F') {
   val = c - 'A' + 10;
   c -= 'A' - 'a';
  }
  else
   return -1;
  ds->hex_pfx[i] = c;
  if (!(i & 1))
   val <<= 4;
  ds->bin_pfx.hash[i >> 1] |= val;
 }

 ds->len = len;
 ds->hex_pfx[len] = '\0';
 ds->repo = r;
 prepare_alt_odb(r);
 return 0;
}
