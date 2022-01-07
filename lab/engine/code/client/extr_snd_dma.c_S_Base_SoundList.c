
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int soundLength; size_t soundCompressionMethod; size_t inMemory; int soundName; } ;
typedef TYPE_1__ sfx_t ;


 int Com_Printf (char*,int,...) ;
 int S_DisplayFreeMemory () ;
 TYPE_1__* s_knownSfx ;
 int s_numSfx ;
 int strcpy (char*,char*) ;

void S_Base_SoundList( void ) {
 int i;
 sfx_t *sfx;
 int size, total;
 char type[4][16];
 char mem[2][16];

 strcpy(type[0], "16bit");
 strcpy(type[1], "adpcm");
 strcpy(type[2], "daub4");
 strcpy(type[3], "mulaw");
 strcpy(mem[0], "paged out");
 strcpy(mem[1], "resident ");
 total = 0;
 for (sfx=s_knownSfx, i=0 ; i<s_numSfx ; i++, sfx++) {
  size = sfx->soundLength;
  total += size;
  Com_Printf("%6i[%s] : %s[%s]\n", size, type[sfx->soundCompressionMethod],
    sfx->soundName, mem[sfx->inMemory] );
 }
 Com_Printf ("Total resident: %i\n", total);
 S_DisplayFreeMemory();
}
