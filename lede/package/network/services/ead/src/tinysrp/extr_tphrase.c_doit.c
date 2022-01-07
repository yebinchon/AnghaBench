
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t_pw {int pebuf; } ;
struct t_confent {int dummy; } ;
typedef int passphrase1 ;
typedef int passphrase ;
typedef int FILE ;


 scalar_t__ Configindex ;
 int Passfile ;
 int creat (int ,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 struct t_confent* gettcid (scalar_t__) ;
 int memset (char*,int ,int) ;
 int printf (char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ t_changepw (int ,int *) ;
 scalar_t__ t_getpass (char*,int,char*) ;
 scalar_t__ t_getprecount () ;
 int t_makepwent (struct t_pw*,char*,char*,int *,struct t_confent*) ;

void doit(char *name)
{
 char passphrase[128], passphrase1[128];
 FILE *f;
 struct t_confent *tcent;
 struct t_pw eps_passwd;



 if (Configindex <= 0) {
  Configindex = t_getprecount();
 }
 tcent = gettcid(Configindex);
 if (tcent == ((void*)0)) {
  fprintf(stderr, "Invalid configuration file entry.\n");
  exit(1);
 }



 printf("Setting passphrase for %s\n", name);

 if (t_getpass(passphrase, sizeof(passphrase), "Enter passphrase: ") < 0) {
  exit(1);
 }
 if (t_getpass(passphrase1, sizeof(passphrase1), "Verify: ") < 0) {
  exit(1);
 }
 if (strcmp(passphrase, passphrase1) != 0) {
  fprintf(stderr, "mismatch\n");
  exit(1);
 }



 t_makepwent(&eps_passwd, name, passphrase, ((void*)0), tcent);



 memset(passphrase, 0, sizeof(passphrase));
 memset(passphrase1, 0, sizeof(passphrase1));



 if ((f = fopen(Passfile, "r+")) == ((void*)0)) {
  creat(Passfile, 0400);
 } else {
  fclose(f);
 }



 if (t_changepw(Passfile, &eps_passwd.pebuf) < 0) {
  fprintf(stderr, "Error changing passphrase\n");
  exit(1);
 }
}
