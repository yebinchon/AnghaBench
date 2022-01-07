
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile {int dummy; } ;
struct ewah_bitmap {int dummy; } ;


 int die (char*) ;
 scalar_t__ ewah_serialize_to (struct ewah_bitmap*,int ,struct hashfile*) ;
 int hashwrite_ewah_helper ;

__attribute__((used)) static inline void dump_bitmap(struct hashfile *f, struct ewah_bitmap *bitmap)
{
 if (ewah_serialize_to(bitmap, hashwrite_ewah_helper, f) < 0)
  die("Failed to write bitmap index");
}
