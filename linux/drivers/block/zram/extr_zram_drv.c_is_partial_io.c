
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {scalar_t__ bv_len; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline bool is_partial_io(struct bio_vec *bvec)
{
 return bvec->bv_len != PAGE_SIZE;
}
