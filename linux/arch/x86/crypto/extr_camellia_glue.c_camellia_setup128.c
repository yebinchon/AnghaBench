
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CAMELLIA_F (int ,int ,int ,int ) ;
 int CAMELLIA_SIGMA1L ;
 int CAMELLIA_SIGMA1R ;
 int CAMELLIA_SIGMA2L ;
 int CAMELLIA_SIGMA2R ;
 int CAMELLIA_SIGMA3L ;
 int CAMELLIA_SIGMA3R ;
 int CAMELLIA_SIGMA4L ;
 int CAMELLIA_SIGMA4R ;
 int ROLDQ (int ,int ,int) ;
 int camellia_setup_tail (int *,int *,int) ;
 int get_unaligned_be64 (unsigned char const*) ;

__attribute__((used)) static void camellia_setup128(const unsigned char *key, u64 *subkey)
{
 u64 kl, kr, ww;
 u64 subRL[26];




 kl = get_unaligned_be64(key);
 kr = get_unaligned_be64(key + 8);



 subRL[0] = kl;

 subRL[1] = kr;


 ROLDQ(kl, kr, 15);


 subRL[4] = kl;

 subRL[5] = kr;


 ROLDQ(kl, kr, 30);


 subRL[10] = kl;

 subRL[11] = kr;


 ROLDQ(kl, kr, 15);


 subRL[13] = kr;

 ROLDQ(kl, kr, 17);


 subRL[16] = kl;

 subRL[17] = kr;


 ROLDQ(kl, kr, 17);


 subRL[18] = kl;

 subRL[19] = kr;


 ROLDQ(kl, kr, 17);


 subRL[22] = kl;

 subRL[23] = kr;


 kl = subRL[0];
 kr = subRL[1];
 CAMELLIA_F(kl, CAMELLIA_SIGMA1L, CAMELLIA_SIGMA1R, ww);
 kr ^= ww;
 CAMELLIA_F(kr, CAMELLIA_SIGMA2L, CAMELLIA_SIGMA2R, kl);


 CAMELLIA_F(kl, CAMELLIA_SIGMA3L, CAMELLIA_SIGMA3R, kr);
 kr ^= ww;
 CAMELLIA_F(kr, CAMELLIA_SIGMA4L, CAMELLIA_SIGMA4R, ww);
 kl ^= ww;



 subRL[2] = kl;
 subRL[3] = kr;
 ROLDQ(kl, kr, 15);

 subRL[6] = kl;
 subRL[7] = kr;
 ROLDQ(kl, kr, 15);

 subRL[8] = kl;
 subRL[9] = kr;
 ROLDQ(kl, kr, 15);

 subRL[12] = kl;
 ROLDQ(kl, kr, 15);

 subRL[14] = kl;
 subRL[15] = kr;
 ROLDQ(kl, kr, 34);

 subRL[20] = kl;
 subRL[21] = kr;
 ROLDQ(kl, kr, 17);

 subRL[24] = kl;
 subRL[25] = kr;

 camellia_setup_tail(subkey, subRL, 24);
}
