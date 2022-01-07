
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_istream {scalar_t__ z_state; int z; } ;


 int git_inflate_end (int *) ;
 scalar_t__ z_used ;

__attribute__((used)) static void close_deflated_stream(struct git_istream *st)
{
 if (st->z_state == z_used)
  git_inflate_end(&st->z);
}
