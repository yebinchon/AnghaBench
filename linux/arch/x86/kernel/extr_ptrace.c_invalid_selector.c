
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEGMENT_RPL_MASK ;
 int USER_RPL ;
 int unlikely (int) ;

__attribute__((used)) static inline bool invalid_selector(u16 value)
{
 return unlikely(value != 0 && (value & SEGMENT_RPL_MASK) != USER_RPL);
}
