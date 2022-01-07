
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repack_info {scalar_t__ mtime; } ;



__attribute__((used)) static int compare_by_mtime(const void *a_, const void *b_)
{
 const struct repack_info *a, *b;

 a = (const struct repack_info *)a_;
 b = (const struct repack_info *)b_;

 if (a->mtime < b->mtime)
  return -1;
 if (a->mtime > b->mtime)
  return 1;
 return 0;
}
