
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 long abs (int ) ;

__attribute__((used)) static inline long get_frame_size(unsigned long instr)
{
 return abs((s16)(instr & 0xFFFF));
}
