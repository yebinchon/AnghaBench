
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int ENOMEM ;
 unsigned long SDB_TE_ALERT_REQ_MASK ;
 unsigned long get_zeroed_page (int ) ;
 unsigned long* trailer_entry_ptr (unsigned long) ;

__attribute__((used)) static int alloc_sample_data_block(unsigned long *sdbt, gfp_t gfp_flags)
{
 unsigned long sdb, *trailer;


 sdb = get_zeroed_page(gfp_flags);
 if (!sdb)
  return -ENOMEM;
 trailer = trailer_entry_ptr(sdb);
 *trailer = SDB_TE_ALERT_REQ_MASK;


 *sdbt = sdb;

 return 0;
}
