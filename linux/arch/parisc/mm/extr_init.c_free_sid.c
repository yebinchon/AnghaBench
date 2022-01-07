
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BUG_ON (unsigned long) ;
 unsigned long SHIFT_PER_LONG ;
 unsigned long SPACEID_SHIFT ;
 unsigned long* dirty_space_id ;
 int dirty_space_ids ;
 int sid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void free_sid(unsigned long spaceid)
{
 unsigned long index = spaceid >> SPACEID_SHIFT;
 unsigned long *dirty_space_offset;

 dirty_space_offset = dirty_space_id + (index >> SHIFT_PER_LONG);
 index &= (BITS_PER_LONG - 1);

 spin_lock(&sid_lock);

 BUG_ON(*dirty_space_offset & (1L << index));

 *dirty_space_offset |= (1L << index);
 dirty_space_ids++;

 spin_unlock(&sid_lock);
}
