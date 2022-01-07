
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moved_block {int dummy; } ;


 int memset (struct moved_block*,int ,int) ;

__attribute__((used)) static void moved_block_clear(struct moved_block *b)
{
 memset(b, 0, sizeof(*b));
}
