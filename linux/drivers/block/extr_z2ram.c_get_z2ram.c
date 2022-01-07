
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z2RAM_CHUNKSHIFT ;
 int Z2RAM_CHUNKSIZE ;
 int Z2RAM_SIZE ;
 int Z2RAM_START ;
 scalar_t__ ZTWO_VADDR (int ) ;
 int clear_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;
 int z2_count ;
 unsigned long* z2ram_map ;
 int z2ram_size ;
 int zorro_unused_z2ram ;

__attribute__((used)) static void
get_z2ram( void )
{
    int i;

    for ( i = 0; i < Z2RAM_SIZE / Z2RAM_CHUNKSIZE; i++ )
    {
 if ( test_bit( i, zorro_unused_z2ram ) )
 {
     z2_count++;
     z2ram_map[z2ram_size++] = (unsigned long)ZTWO_VADDR(Z2RAM_START) +
          (i << Z2RAM_CHUNKSHIFT);
     clear_bit( i, zorro_unused_z2ram );
 }
    }

    return;
}
