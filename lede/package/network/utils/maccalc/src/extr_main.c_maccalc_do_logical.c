
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_INVALID ;
 int MAC_ADDRESS_LEN ;
 int parse_mac (char const*,unsigned char*) ;
 int print_mac (unsigned char*) ;
 int usage () ;

__attribute__((used)) static int maccalc_do_logical(int argc, const char *argv[],
         unsigned char (*op)(unsigned char n1,
        unsigned char n2))
{
 unsigned char mac1[MAC_ADDRESS_LEN];
 unsigned char mac2[MAC_ADDRESS_LEN];
 int err;
 int i;

 if (argc != 2) {
  usage();
  return ERR_INVALID;
 }

 err = parse_mac(argv[0], mac1);
 if (err)
  return err;

 err = parse_mac(argv[1], mac2);
 if (err)
  return err;

 for (i = 0; i < MAC_ADDRESS_LEN; i++)
  mac1[i] = op(mac1[i],mac2[i]);

 print_mac(mac1);
 return 0;
}
