
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_inverse_encoding ;


 int assert (int ) ;
 int memset (unsigned char*,int,int) ;
 size_t* s_ascii_encoding ;

__attribute__((used)) static int SV_RankAsciiDecode( unsigned char* dest, const char* src,
 int src_len )
{
 static unsigned char s_inverse_encoding[256];
 static char s_init = 0;

 unsigned char bin[3];
 unsigned char txt[4];
 int dest_len = 0;
 int i;
 int j;
 int num_bytes;

 assert( dest != ((void*)0) );
 assert( src != ((void*)0) );

 if( !s_init )
 {

  memset( s_inverse_encoding, 255, sizeof(s_inverse_encoding) );
  for( i = 0; i < 64; i++ )
  {
   s_inverse_encoding[s_ascii_encoding[i]] = i;
  }
  s_init = 1;
 }

 for( i = 0; i < src_len; i += 4 )
 {

  for( j = 0; j < 4; j++ )
  {
   txt[j] = (i + j < src_len) ? s_inverse_encoding[src[i + j]] : 0;
   if (txt[j] == 255)
   {
    return 0;
   }
  }


  bin[0] = (txt[0] << 2) | (txt[1] >> 4);
  bin[1] = (txt[1] << 4) | (txt[2] >> 2);
  bin[2] = (txt[2] << 6) | txt[3];


  num_bytes = (i + 3 < src_len) ? 3 : ((src_len - i) * 3) / 4;
  for( j = 0; j < num_bytes; j++ )
  {
   dest[dest_len++] = bin[j];
  }
 }

 return dest_len;
}
