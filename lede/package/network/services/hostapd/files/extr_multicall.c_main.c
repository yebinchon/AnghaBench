
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int hostapd_main (int,char**) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;
 int wpa_supplicant_main (int,char**) ;

int main(int argc, char **argv)
{
 bool restart = 0;
 const char *prog = argv[0];

restart:
 if (strstr(argv[0], "hostapd"))
  return hostapd_main(argc, argv);
 else if (strstr(argv[0], "wpa_supplicant"))
  return wpa_supplicant_main(argc, argv);

 if (!restart && argc > 1) {
  argv++;
  argc--;
  restart = 1;
  goto restart;
 }

 fprintf(stderr, "Invalid command.\nUsage: %s wpa_supplicant|hostapd [<arguments>]\n", prog);
 return 255;
}
