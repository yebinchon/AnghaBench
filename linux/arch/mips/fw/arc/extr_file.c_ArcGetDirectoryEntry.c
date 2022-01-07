
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_vdirent {int dummy; } ;
typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL4 (int ,int ,struct linux_vdirent*,int ,int *) ;
 int get_vdirent ;

LONG
ArcGetDirectoryEntry(ULONG FileID, struct linux_vdirent *Buffer,
       ULONG N, ULONG *Count)
{
 return ARC_CALL4(get_vdirent, FileID, Buffer, N, Count);
}
