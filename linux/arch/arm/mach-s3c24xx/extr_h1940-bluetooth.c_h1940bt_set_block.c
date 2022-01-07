
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h1940bt_enable (int) ;

__attribute__((used)) static int h1940bt_set_block(void *data, bool blocked)
{
 h1940bt_enable(!blocked);
 return 0;
}
