
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int file_size; int file_name; int file_data; } ;
typedef int FILE ;


 int DBG (char*,...) ;
 int ERR (char*,...) ;
 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int ,int,int,int *) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 int malloc (int) ;
 int rewind (int *) ;

__attribute__((used)) static int bufferFile(struct file_info* finfo) {
 int fs = 0;
 FILE* fp = ((void*)0);

 if (!finfo || !finfo->file_name) {
  ERR("Invalid pointer provided!\n");
  return -1;
 }

 DBG("Opening file: %s\n", finfo->file_name);

 if (!(fp = fopen(finfo->file_name, "rb"))) {
  ERR("Error opening file: %s\n", finfo->file_name);
  return -1;
 }


 rewind(fp);
 fseek(fp, 0L, SEEK_END);
 fs = ftell(fp);
 rewind(fp);

 if (fs < 0) {
  ERR("Error getting filesize: %s\n", finfo->file_name);
  fclose(fp);
  return -1;
 }

 DBG("Filesize: %i\n", fs);
 finfo->file_size = fs;

 if (!(finfo->file_data = malloc(fs))) {
  ERR("Out of memory!\n");
  fclose(fp);
  return -1;
 }

 if (fread(finfo->file_data, 1, fs, fp) != fs) {
  ERR("Error reading file %s\n", finfo->file_name);
  fclose(fp);
  return -1;
 }

 DBG("File: read successful\n");
 fclose(fp);

 return 0;
}
