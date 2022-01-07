
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ContentType { ____Placeholder_ContentType } ContentType ;


 int TL_STORAGE_FILE_GIF ;
 int TL_STORAGE_FILE_JPEG ;
 int TL_STORAGE_FILE_MOV ;
 int TL_STORAGE_FILE_MP3 ;
 int TL_STORAGE_FILE_MP4 ;
 int TL_STORAGE_FILE_PARTIAL ;
 int TL_STORAGE_FILE_PDF ;
 int TL_STORAGE_FILE_PNG ;
 int TL_STORAGE_FILE_UNKNOWN ;
 int TL_STORAGE_FILE_WEBP ;
int content_type_to_file_type (enum ContentType content_type) {
  switch (content_type) {
    case 129: return TL_STORAGE_FILE_UNKNOWN;
    case 137: return TL_STORAGE_FILE_JPEG;
    case 138: return TL_STORAGE_FILE_GIF;
    case 130: return TL_STORAGE_FILE_PNG;
    case 131: return TL_STORAGE_FILE_PDF;
    case 134: return TL_STORAGE_FILE_MP3;
    case 135: return TL_STORAGE_FILE_MOV;
    case 132: return TL_STORAGE_FILE_PARTIAL;
    case 133: return TL_STORAGE_FILE_MP4;
    case 128: return TL_STORAGE_FILE_WEBP;
    case 136: break;
  }
  return 0;
}
