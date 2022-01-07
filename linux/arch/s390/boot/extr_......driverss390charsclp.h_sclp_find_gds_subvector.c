
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct gds_subvector {int length; scalar_t__ key; } ;



__attribute__((used)) static inline struct gds_subvector *
sclp_find_gds_subvector(void *start, void *end, u8 key)
{
 struct gds_subvector *sv;

 for (sv = start; (void *) sv < end; sv = (void *) sv + sv->length)
  if (sv->key == key)
   return sv;
 return ((void*)0);
}
