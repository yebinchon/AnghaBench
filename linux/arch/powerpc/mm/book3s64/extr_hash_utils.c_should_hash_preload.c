
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;



__attribute__((used)) static bool should_hash_preload(struct mm_struct *mm, unsigned long ea)
{
 return 1;
}
