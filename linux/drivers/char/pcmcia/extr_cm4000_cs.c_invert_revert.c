
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char bitrev8 (unsigned char) ;

__attribute__((used)) static inline unsigned char invert_revert(unsigned char ch)
{
 return bitrev8(~ch);
}
