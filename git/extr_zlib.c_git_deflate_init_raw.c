
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_zstream ;


 int do_git_deflate_init (int *,int,int) ;

void git_deflate_init_raw(git_zstream *strm, int level)
{




 do_git_deflate_init(strm, level, -15);
}
