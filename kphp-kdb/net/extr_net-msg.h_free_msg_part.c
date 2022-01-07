
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_part {int dummy; } ;


 int free (struct msg_part*) ;
 int rwm_total_msg_parts ;

__attribute__((used)) static inline void free_msg_part (struct msg_part *mp) { rwm_total_msg_parts --; free (mp); }
