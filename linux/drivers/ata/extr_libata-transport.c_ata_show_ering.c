
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ata_show_ering_arg {scalar_t__ written; scalar_t__ buf; } ;
struct ata_ering_entry {int err_mask; int timestamp; } ;


 int HZ ;
 int NSEC_PER_SEC ;
 int div_u64_rem (int ,int,int*) ;
 scalar_t__ get_ata_err_names (int ,scalar_t__) ;
 scalar_t__ sprintf (scalar_t__,char*,int ,int) ;

__attribute__((used)) static int ata_show_ering(struct ata_ering_entry *ent, void *void_arg)
{
 struct ata_show_ering_arg* arg = void_arg;
 u64 seconds;
 u32 rem;

 seconds = div_u64_rem(ent->timestamp, HZ, &rem);
 arg->written += sprintf(arg->buf + arg->written,
           "[%5llu.%09lu]", seconds,
    rem * NSEC_PER_SEC / HZ);
 arg->written += get_ata_err_names(ent->err_mask,
       arg->buf + arg->written);
 return 0;
}
