
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hashfile {int dummy; } ;
typedef int data ;


 int hashwrite (struct hashfile*,int *,int) ;
 int htonl (int ) ;

__attribute__((used)) static inline void hashwrite_be32(struct hashfile *f, uint32_t data)
{
 data = htonl(data);
 hashwrite(f, &data, sizeof(data));
}
