
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hashfile {int dummy; } ;
typedef int data ;


 int hashwrite (struct hashfile*,int *,int) ;

__attribute__((used)) static inline void hashwrite_u8(struct hashfile *f, uint8_t data)
{
 hashwrite(f, &data, sizeof(data));
}
