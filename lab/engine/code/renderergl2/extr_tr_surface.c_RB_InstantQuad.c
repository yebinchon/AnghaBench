
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec4_t ;
typedef int vec2_t ;
struct TYPE_4__ {int modelviewProjection; } ;
struct TYPE_3__ {int textureColorShader; } ;


 int GLSL_BindProgram (int *) ;
 int GLSL_SetUniformMat4 (int *,int ,int ) ;
 int GLSL_SetUniformVec4 (int *,int ,int ) ;
 int RB_InstantQuad2 (int *,int *) ;
 int UNIFORM_COLOR ;
 int UNIFORM_MODELVIEWPROJECTIONMATRIX ;
 int VectorSet2 (int ,float,float) ;
 int colorWhite ;
 TYPE_2__ glState ;
 TYPE_1__ tr ;

void RB_InstantQuad(vec4_t quadVerts[4])
{
 vec2_t texCoords[4];

 VectorSet2(texCoords[0], 0.0f, 0.0f);
 VectorSet2(texCoords[1], 1.0f, 0.0f);
 VectorSet2(texCoords[2], 1.0f, 1.0f);
 VectorSet2(texCoords[3], 0.0f, 1.0f);

 GLSL_BindProgram(&tr.textureColorShader);

 GLSL_SetUniformMat4(&tr.textureColorShader, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
 GLSL_SetUniformVec4(&tr.textureColorShader, UNIFORM_COLOR, colorWhite);

 RB_InstantQuad2(quadVerts, texCoords);
}
