
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_4__ {scalar_t__ have_repository; } ;
struct TYPE_3__ {int hexsz; } ;


 int BUG (char*,int) ;
 int FALLBACK_DEFAULT_ABBREV ;
 char const* find_unique_abbrev (struct object_id const*,int) ;
 char* oid_to_hex (struct object_id const*) ;
 TYPE_2__* startup_info ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static const char *diff_abbrev_oid(const struct object_id *oid, int abbrev)
{
 if (startup_info->have_repository)
  return find_unique_abbrev(oid, abbrev);
 else {
  char *hex = oid_to_hex(oid);
  if (abbrev < 0)
   abbrev = FALLBACK_DEFAULT_ABBREV;
  if (abbrev > the_hash_algo->hexsz)
   BUG("oid abbreviation out of range: %d", abbrev);
  if (abbrev)
   hex[abbrev] = '\0';
  return hex;
 }
}
