
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_entry_track(int track)
{
 return (track & 0x0000ff00) >> 8;
}
