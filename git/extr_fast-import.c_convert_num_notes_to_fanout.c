
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;



__attribute__((used)) static unsigned char convert_num_notes_to_fanout(uintmax_t num_notes)
{
 unsigned char fanout = 0;
 while ((num_notes >>= 8))
  fanout++;
 return fanout;
}
