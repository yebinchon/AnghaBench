
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_part {int dummy; } ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static inline struct msg_part *alloc_msg_part (void) { return (struct msg_part *) malloc (sizeof (struct msg_part)); }
