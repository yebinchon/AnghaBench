
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int find_next_zero_bit (int ,int,scalar_t__) ;
 int max_sev_asid ;
 scalar_t__ min_sev_asid ;
 int set_bit (int,int ) ;
 int sev_asid_bitmap ;

__attribute__((used)) static int sev_asid_new(void)
{
 int pos;




 pos = find_next_zero_bit(sev_asid_bitmap, max_sev_asid, min_sev_asid - 1);
 if (pos >= max_sev_asid)
  return -EBUSY;

 set_bit(pos, sev_asid_bitmap);
 return pos + 1;
}
