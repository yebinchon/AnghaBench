; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_GetShaderHeader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_GetShaderHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@glRefConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"#version 150\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"#version 130\0A\00", align 1
@GL_VERTEX_SHADER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"#define attribute in\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#define varying out\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"#define varying in\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"out vec4 out_Color;\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"#define gl_FragColor out_Color\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"#define texture2D texture\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"#define textureCubeLod textureLod\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"#define shadow2D texture\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"#version 120\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"#define shadow2D(a,b) shadow2D(a,b).r \0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"#ifndef M_PI\0A#define M_PI 3.14159265358979323846\0A#endif\0A\00", align 1
@.str.13 = private unnamed_addr constant [242 x i8] c"#ifndef deformGen_t\0A#define deformGen_t\0A#define DGEN_WAVE_SIN %i\0A#define DGEN_WAVE_SQUARE %i\0A#define DGEN_WAVE_TRIANGLE %i\0A#define DGEN_WAVE_SAWTOOTH %i\0A#define DGEN_WAVE_INVERSE_SAWTOOTH %i\0A#define DGEN_BULGE %i\0A#define DGEN_MOVE %i\0A#endif\0A\00", align 1
@DGEN_WAVE_SIN = common dso_local global i32 0, align 4
@DGEN_WAVE_SQUARE = common dso_local global i32 0, align 4
@DGEN_WAVE_TRIANGLE = common dso_local global i32 0, align 4
@DGEN_WAVE_SAWTOOTH = common dso_local global i32 0, align 4
@DGEN_WAVE_INVERSE_SAWTOOTH = common dso_local global i32 0, align 4
@DGEN_BULGE = common dso_local global i32 0, align 4
@DGEN_MOVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [172 x i8] c"#ifndef tcGen_t\0A#define tcGen_t\0A#define TCGEN_LIGHTMAP %i\0A#define TCGEN_TEXTURE %i\0A#define TCGEN_ENVIRONMENT_MAPPED %i\0A#define TCGEN_FOG %i\0A#define TCGEN_VECTOR %i\0A#endif\0A\00", align 1
@TCGEN_LIGHTMAP = common dso_local global i32 0, align 4
@TCGEN_TEXTURE = common dso_local global i32 0, align 4
@TCGEN_ENVIRONMENT_MAPPED = common dso_local global i32 0, align 4
@TCGEN_FOG = common dso_local global i32 0, align 4
@TCGEN_VECTOR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [79 x i8] c"#ifndef colorGen_t\0A#define colorGen_t\0A#define CGEN_LIGHTING_DIFFUSE %i\0A#endif\0A\00", align 1
@CGEN_LIGHTING_DIFFUSE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [103 x i8] c"#ifndef alphaGen_t\0A#define alphaGen_t\0A#define AGEN_LIGHTING_SPECULAR %i\0A#define AGEN_PORTAL %i\0A#endif\0A\00", align 1
@AGEN_LIGHTING_SPECULAR = common dso_local global i32 0, align 4
@AGEN_PORTAL = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [61 x i8] c"#ifndef r_FBufScale\0A#define r_FBufScale vec2(%f, %f)\0A#endif\0A\00", align 1
@r_pbr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"#define USE_PBR\0A\00", align 1
@r_cubeMapping = common dso_local global %struct.TYPE_8__* null, align 8
@r_cubemapSize = common dso_local global %struct.TYPE_7__* null, align 8
@.str.19 = private unnamed_addr constant [34 x i8] c"#define ROUGHNESS_MIPS float(%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"#line 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*, i32)* @GLSL_GetShaderHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GLSL_GetShaderHeader(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 1), align 4
  %22 = icmp sge i32 %21, 30
  br i1 %22, label %23, label %71

23:                                               ; preds = %20, %4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 1), align 4
  %31 = icmp sge i32 %30, 50
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %23
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @Q_strcat(i8* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

36:                                               ; preds = %29, %26
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @Q_strcat(i8* %37, i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @GL_VERTEX_SHADER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @Q_strcat(i8* %45, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @Q_strcat(i8* %48, i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %70

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @Q_strcat(i8* %52, i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @Q_strcat(i8* %55, i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @Q_strcat(i8* %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @Q_strcat(i8* %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @Q_strcat(i8* %64, i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @Q_strcat(i8* %67, i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %70

70:                                               ; preds = %51, %44
  br label %78

71:                                               ; preds = %20, %17
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @Q_strcat(i8* %72, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @Q_strcat(i8* %75, i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @Q_strcat(i8* %79, i32 %80, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @DGEN_WAVE_SIN, align 4
  %85 = load i32, i32* @DGEN_WAVE_SQUARE, align 4
  %86 = load i32, i32* @DGEN_WAVE_TRIANGLE, align 4
  %87 = load i32, i32* @DGEN_WAVE_SAWTOOTH, align 4
  %88 = load i32, i32* @DGEN_WAVE_INVERSE_SAWTOOTH, align 4
  %89 = load i32, i32* @DGEN_BULGE, align 4
  %90 = load i32, i32* @DGEN_MOVE, align 4
  %91 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.13, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = call i32 @Q_strcat(i8* %82, i32 %83, i8* %91)
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TCGEN_LIGHTMAP, align 4
  %96 = load i32, i32* @TCGEN_TEXTURE, align 4
  %97 = load i32, i32* @TCGEN_ENVIRONMENT_MAPPED, align 4
  %98 = load i32, i32* @TCGEN_FOG, align 4
  %99 = load i32, i32* @TCGEN_VECTOR, align 4
  %100 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.14, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = call i32 @Q_strcat(i8* %93, i32 %94, i8* %100)
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @CGEN_LIGHTING_DIFFUSE, align 4
  %105 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i64 0, i64 0), i32 %104)
  %106 = call i32 @Q_strcat(i8* %102, i32 %103, i8* %105)
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @AGEN_LIGHTING_SPECULAR, align 4
  %110 = load i32, i32* @AGEN_PORTAL, align 4
  %111 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.16, i64 0, i64 0), i32 %109, i32 %110)
  %112 = call i32 @Q_strcat(i8* %107, i32 %108, i8* %111)
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glConfig, i32 0, i32 1), align 8
  %114 = sitofp i64 %113 to float
  %115 = fdiv float 1.000000e+00, %114
  store float %115, float* %9, align 4
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @glConfig, i32 0, i32 0), align 8
  %117 = sitofp i64 %116 to float
  %118 = fdiv float 1.000000e+00, %117
  store float %118, float* %10, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load float, float* %9, align 4
  %122 = fptosi float %121 to i32
  %123 = load float, float* %10, align 4
  %124 = fpext float %123 to double
  %125 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i32 %122, double %124)
  %126 = call i32 @Q_strcat(i8* %119, i32 %120, i8* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_pbr, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %78
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @Q_strcat(i8* %132, i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %135

135:                                              ; preds = %131, %78
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_cubeMapping, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_cubemapSize, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %147, %140
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %144

152:                                              ; preds = %144
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, 2
  %155 = call i32 @MAX(i32 1, i32 %154)
  store i32 %155, i32* %12, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %158)
  %160 = call i32 @Q_strcat(i8* %156, i32 %157, i8* %159)
  br label %161

161:                                              ; preds = %152, %135
  %162 = load i8*, i8** %6, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @Q_strcat(i8* %165, i32 %166, i8* %167)
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @Q_strcat(i8* %170, i32 %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i8* @va(i8*, i32, ...) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
