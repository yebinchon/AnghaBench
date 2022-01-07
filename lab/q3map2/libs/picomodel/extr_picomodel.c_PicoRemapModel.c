
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* picoVec3_t ;
typedef int picoShader_t ;
struct TYPE_9__ {char* token; } ;
typedef TYPE_1__ picoParser_t ;
typedef int picoModel_t ;
typedef int* picoColor_t ;
typedef int picoByte_t ;


 int * PicoFindShader (int *,char*,int ) ;
 int PicoSetShaderAmbientColor (int *,int*) ;
 int PicoSetShaderDiffuseColor (int *,int*) ;
 int PicoSetShaderMapName (int *,char*) ;
 int PicoSetShaderName (int *,char*) ;
 int PicoSetShaderSpecularColor (int *,int*) ;
 char* _pico_clone_alloc (char*) ;
 int _pico_free (char*) ;
 int _pico_free_file (int*) ;
 int _pico_free_parser (TYPE_1__*) ;
 int _pico_load_file (char*,int**,int*) ;
 TYPE_1__* _pico_new_parser (int*,int) ;
 int * _pico_parse (TYPE_1__*,int) ;
 int _pico_parse_check (TYPE_1__*,int,char*) ;
 int _pico_parse_skip_braced (TYPE_1__*) ;
 int _pico_parse_skip_rest (TYPE_1__*) ;
 int _pico_parse_vec (TYPE_1__*,scalar_t__*) ;
 int _pico_stricmp (char*,char*) ;
 int _prm_error_return ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

int PicoRemapModel( picoModel_t *model, char *remapFile ){
 picoParser_t *p;
 picoByte_t *remapBuffer;
 int remapBufSize;



 if ( model == ((void*)0) || remapFile == ((void*)0) ) {
  return 0;
 }


 _pico_load_file( remapFile, &remapBuffer, &remapBufSize );


 if ( remapBufSize == 0 ) {
  return 1;
 }
 if ( remapBufSize < 0 ) {
  return 0;

 }

 p = _pico_new_parser( remapBuffer, remapBufSize );
 if ( p == ((void*)0) ) {

  _prm_error_return;
 }


 while ( 1 )
 {

  if ( !_pico_parse( p, 1 ) ) {
   break;
  }


  if ( !_pico_stricmp( p->token, "//" ) ) {
   _pico_parse_skip_rest( p );
   continue;
  }



  if ( !_pico_stricmp( p->token, "materials" ) ) {
   int level = 1;


   if ( !_pico_parse_check( p, 1, "{" ) ) {
    _prm_error_return;
   }


   while ( 1 )
   {
    picoShader_t *shader;
    char *materialName;


    if ( _pico_parse( p, 1 ) == ((void*)0) ) {
     break;
    }
    if ( !strlen( p->token ) ) {
     continue;
    }
    materialName = _pico_clone_alloc( p->token );
    if ( materialName == ((void*)0) ) {
     _prm_error_return;
    }


    if ( p->token[0] == '{' ) {
     level++;
    }
    if ( p->token[0] == '}' ) {
     level--;
    }
    if ( !level ) {
     break;
    }


    if ( !_pico_parse( p, 0 ) ) {
     _pico_free( materialName );
     _prm_error_return;
    }

    if ( !strcmp( p->token, "=>" ) ||
      !strcmp( p->token, "->" ) ||
      !strcmp( p->token, "=" ) ) {

     if ( !_pico_parse( p, 0 ) ) {
      _pico_free( materialName );
      _prm_error_return;
     }
    }

    shader = PicoFindShader( model, materialName, 0 );


    if ( shader != ((void*)0) ) {
     PicoSetShaderName( shader, p->token );
    }

    _pico_free( materialName );


    _pico_parse_skip_rest( p );
   }
  }


  else if ( !_pico_stricmp( p->token, "materials[" ) ) {
   picoShader_t *shader;
   char *tempMaterialName;
   int level = 1;


   if ( !_pico_parse( p, 0 ) ) {
    _prm_error_return;
   }


   tempMaterialName = _pico_clone_alloc( p->token );
   if ( tempMaterialName == ((void*)0) ) {
    _prm_error_return;
   }


   if ( !_pico_parse_check( p, 0, "]" ) ) {
    _prm_error_return;
   }


   shader = PicoFindShader( model, tempMaterialName, 0 );


   _pico_free( tempMaterialName );




   if ( shader == ((void*)0) ) {
    _pico_parse_skip_braced( p );
    continue;
   }

   if ( !_pico_parse_check( p, 1, "{" ) ) {
    _prm_error_return;
   }


   while ( 1 )
   {

    if ( _pico_parse( p, 1 ) == ((void*)0) ) {
     break;
    }
    if ( !strlen( p->token ) ) {
     continue;
    }


    if ( p->token[0] == '{' ) {
     level++;
    }
    if ( p->token[0] == '}' ) {
     level--;
    }
    if ( !level ) {
     break;
    }


    if ( !_pico_stricmp( p->token, "shader" ) ) {
     if ( !_pico_parse( p, 0 ) ) {
      _prm_error_return;
     }
     PicoSetShaderName( shader, p->token );
    }

    else if ( !_pico_stricmp( p->token, "mapname" ) ) {
     if ( !_pico_parse( p, 0 ) ) {
      _prm_error_return;
     }
     PicoSetShaderMapName( shader, p->token );
    }

    else if ( !_pico_stricmp( p->token, "ambient" ) ) {
     picoColor_t color;
     picoVec3_t v;


     if ( !_pico_parse_vec( p, v ) ) {
      _prm_error_return;
     }


     color[ 0 ] = (picoByte_t)v[ 0 ];
     color[ 1 ] = (picoByte_t)v[ 1 ];
     color[ 2 ] = (picoByte_t)v[ 2 ];
     color[ 3 ] = 1;


     PicoSetShaderAmbientColor( shader, color );
    }

    else if ( !_pico_stricmp( p->token, "diffuse" ) ) {
     picoColor_t color;
     picoVec3_t v;


     if ( !_pico_parse_vec( p, v ) ) {
      _prm_error_return;
     }


     color[ 0 ] = (picoByte_t)v[ 0 ];
     color[ 1 ] = (picoByte_t)v[ 1 ];
     color[ 2 ] = (picoByte_t)v[ 2 ];
     color[ 3 ] = 1;


     PicoSetShaderDiffuseColor( shader, color );
    }

    else if ( !_pico_stricmp( p->token, "specular" ) ) {
     picoColor_t color;
     picoVec3_t v;


     if ( !_pico_parse_vec( p,v ) ) {
      _prm_error_return;
     }


     color[ 0 ] = (picoByte_t)v[ 0 ];
     color[ 1 ] = (picoByte_t)v[ 1 ];
     color[ 2 ] = (picoByte_t)v[ 2 ];
     color[ 3 ] = 1;


     PicoSetShaderSpecularColor( shader, color );
    }

    _pico_parse_skip_rest( p );
   }
  }

 }


 _pico_free_parser( p );
 _pico_free_file( remapBuffer );


 return 1;
}
