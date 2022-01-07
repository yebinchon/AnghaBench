
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cn_msg {int dummy; } ;
typedef int __u8 ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline struct cn_msg *buffer_to_cn_msg(__u8 *buffer)
{
 BUILD_BUG_ON(sizeof(struct cn_msg) != 20);
 return (struct cn_msg *)(buffer + 4);
}
