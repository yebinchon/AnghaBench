
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_hdr {int name_sz; } ;


 scalar_t__ name_block (struct mdesc_hdr*) ;

__attribute__((used)) static void *data_block(struct mdesc_hdr *mdesc)
{
 return ((void *) name_block(mdesc)) + mdesc->name_sz;
}
