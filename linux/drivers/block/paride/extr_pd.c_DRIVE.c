
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pd_unit {int drive; } ;



__attribute__((used)) static inline u8 DRIVE(struct pd_unit *disk)
{
 return 0xa0+0x10*disk->drive;
}
