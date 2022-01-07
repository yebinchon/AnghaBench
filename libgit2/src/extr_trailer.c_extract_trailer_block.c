
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t find_patch_start (char const*) ;
 size_t find_trailer_end (char const*,size_t) ;
 size_t find_trailer_start (char const*,size_t) ;
 char* git__malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *extract_trailer_block(const char *message, size_t* len)
{
 size_t patch_start = find_patch_start(message);
 size_t trailer_end = find_trailer_end(message, patch_start);
 size_t trailer_start = find_trailer_start(message, trailer_end);

 size_t trailer_len = trailer_end - trailer_start;

 char *buffer = git__malloc(trailer_len + 1);
 if (buffer == ((void*)0))
  return ((void*)0);

 memcpy(buffer, message + trailer_start, trailer_len);
 buffer[trailer_len] = 0;

 *len = trailer_len;

 return buffer;
}
