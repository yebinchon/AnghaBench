
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;


 int close_pack_fd (struct packed_git*) ;
 int close_pack_index (struct packed_git*) ;
 int close_pack_windows (struct packed_git*) ;

void close_pack(struct packed_git *p)
{
 close_pack_windows(p);
 close_pack_fd(p);
 close_pack_index(p);
}
