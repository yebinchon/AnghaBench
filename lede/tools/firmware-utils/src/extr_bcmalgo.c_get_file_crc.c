
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stat {scalar_t__ st_size; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,scalar_t__,int *) ;
 int free (char*) ;
 int get_buffer_crc (char*,scalar_t__) ;
 char* malloc (scalar_t__) ;
 int stat (char*,struct stat*) ;

uint32_t get_file_crc ( char* filename )
{
 struct stat buf;
 stat ( filename,&buf );
 char* filebuffer = malloc ( buf.st_size+10 );
 FILE* fd = fopen ( filename,"r" );
 fread ( filebuffer, 1, buf.st_size,fd );
 fclose ( fd );
 uint32_t crc = get_buffer_crc ( filebuffer,buf.st_size );
 free ( filebuffer );
 return crc;
}
