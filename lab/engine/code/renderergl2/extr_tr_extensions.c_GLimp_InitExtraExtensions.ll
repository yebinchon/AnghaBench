; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extensions.c_GLimp_InitExtraExtensions.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extensions.c_GLimp_InitExtraExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"...ignoring %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"...using %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"...%s not found\0A\00", align 1
@__const.GLimp_InitExtraExtensions.result = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)], align 16
@qfalse = common dso_local global i8* null, align 8
@glRefConfig = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GL_RENDERER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@qtrue = common dso_local global i8* null, align 8
@QGL_EXT_direct_state_access_PROCS = common dso_local global i32 0, align 4
@QGL_ARB_occlusion_query_PROCS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"GL_ARB_framebuffer_object\00", align 1
@r_ext_framebuffer_object = common dso_local global %struct.TYPE_11__* null, align 8
@GL_MAX_RENDERBUFFER_SIZE = common dso_local global i32 0, align 4
@GL_MAX_COLOR_ATTACHMENTS = common dso_local global i32 0, align 4
@QGL_ARB_framebuffer_object_PROCS = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"GL_ARB_vertex_array_object\00", align 1
@r_arb_vertex_array_object = common dso_local global %struct.TYPE_14__* null, align 8
@QGL_ARB_vertex_array_object_PROCS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"GL_ARB_texture_float\00", align 1
@r_ext_texture_float = common dso_local global %struct.TYPE_10__* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"GL_ARB_depth_clamp\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"GL_ARB_seamless_cube_map\00", align 1
@r_arb_seamless_cube_map = common dso_local global %struct.TYPE_15__* null, align 8
@GL_SHADING_LANGUAGE_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"...using GLSL version %s\0A\00", align 1
@MI_NONE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"GL_NVX_gpu_memory_info\00", align 1
@MI_NVX = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"GL_ATI_meminfo\00", align 1
@MI_ATI = common dso_local global i64 0, align 8
@TCR_NONE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"GL_ARB_texture_compression_rgtc\00", align 1
@r_ext_compressed_textures = common dso_local global %struct.TYPE_13__* null, align 8
@TCR_RGTC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"GL_ARB_texture_compression_bptc\00", align 1
@TCR_BPTC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"GL_EXT_direct_state_access\00", align 1
@r_ext_direct_state_access = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_InitExtraExtensions() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [3 x i8*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [3 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x i8*]* @__const.GLimp_InitExtraExtensions.result to i8*), i64 24, i1 false)
  %9 = call i32 @QGL_VERSION_ATLEAST(i32 3, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = call i32 @QGL_VERSION_ATLEAST(i32 3, i32 2)
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** @qfalse, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 16), align 8
  %12 = load i32, i32* @GL_RENDERER, align 4
  %13 = call i64 @qglGetString(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = call i64 @strstr(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i8*, i8** @qtrue, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 16), align 8
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @QGL_EXT_direct_state_access_PROCS, align 4
  %21 = load i8*, i8** @qtrue, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 15), align 8
  %22 = load i32, i32* @QGL_ARB_occlusion_query_PROCS, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %23 = load i8*, i8** @qfalse, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 0), align 8
  %25 = load i8*, i8** @qfalse, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 14), align 8
  %26 = load i8*, i8** @qfalse, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 13), align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load i8*, i8** %1, align 8
  %31 = call i64 @SDL_GL_ExtensionSupported(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29, %19
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_ext_framebuffer_object, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 0), align 8
  %41 = load i8*, i8** @qtrue, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 14), align 8
  %42 = load i8*, i8** @qtrue, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 13), align 8
  %43 = load i32, i32* @GL_MAX_RENDERBUFFER_SIZE, align 4
  %44 = call i32 @qglGetIntegerv(i32 %43, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 12))
  %45 = load i32, i32* @GL_MAX_COLOR_ATTACHMENTS, align 4
  %46 = call i32 @qglGetIntegerv(i32 %45, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 11))
  %47 = load i32, i32* @QGL_ARB_framebuffer_object_PROCS, align 4
  %48 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %49 = load i32, i32* @PRINT_ALL, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 0), align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %1, align 8
  %55 = call i32 %48(i32 %49, i8* %53, i8* %54)
  br label %63

56:                                               ; preds = %29
  %57 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %58 = load i32, i32* @PRINT_ALL, align 4
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %60 = load i8*, i8** %59, align 16
  %61 = load i8*, i8** %1, align 8
  %62 = call i32 %57(i32 %58, i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %56, %33
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  %64 = load i8*, i8** @qfalse, align 8
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 1), align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %1, align 8
  %70 = call i64 @SDL_GL_ExtensionSupported(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** @qtrue, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 1), align 4
  br label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_arb_vertex_array_object, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 1), align 4
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i32, i32* @QGL_ARB_vertex_array_object_PROCS, align 4
  %88 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %89 = load i32, i32* @PRINT_ALL, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 1), align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %1, align 8
  %95 = call i32 %88(i32 %89, i8* %93, i8* %94)
  br label %103

96:                                               ; preds = %68
  %97 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %98 = load i32, i32* @PRINT_ALL, align 4
  %99 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %100 = load i8*, i8** %99, align 16
  %101 = load i8*, i8** %1, align 8
  %102 = call i32 %97(i32 %98, i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %96, %86
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  %104 = load i8*, i8** @qfalse, align 8
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 2), align 8
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %1, align 8
  %110 = call i64 @SDL_GL_ExtensionSupported(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108, %103
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_ext_texture_float, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 2), align 8
  %120 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %121 = load i32, i32* @PRINT_ALL, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 2), align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %1, align 8
  %127 = call i32 %120(i32 %121, i8* %125, i8* %126)
  br label %135

128:                                              ; preds = %108
  %129 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %130 = load i32, i32* @PRINT_ALL, align 4
  %131 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %132 = load i8*, i8** %131, align 16
  %133 = load i8*, i8** %1, align 8
  %134 = call i32 %129(i32 %130, i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %128, %112
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  %136 = load i8*, i8** @qfalse, align 8
  %137 = ptrtoint i8* %136 to i64
  store i64 %137, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 3), align 8
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %1, align 8
  %142 = call i64 @SDL_GL_ExtensionSupported(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140, %135
  %145 = load i8*, i8** @qtrue, align 8
  %146 = ptrtoint i8* %145 to i64
  store i64 %146, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 3), align 8
  %147 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %148 = load i32, i32* @PRINT_ALL, align 4
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 3), align 8
  %150 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %1, align 8
  %153 = call i32 %147(i32 %148, i8* %151, i8* %152)
  br label %161

154:                                              ; preds = %140
  %155 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %156 = load i32, i32* @PRINT_ALL, align 4
  %157 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %158 = load i8*, i8** %157, align 16
  %159 = load i8*, i8** %1, align 8
  %160 = call i32 %155(i32 %156, i8* %158, i8* %159)
  br label %161

161:                                              ; preds = %154, %144
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  %162 = load i8*, i8** @qfalse, align 8
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 4), align 8
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = load i8*, i8** %1, align 8
  %168 = call i64 @SDL_GL_ExtensionSupported(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %166, %161
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_arb_seamless_cube_map, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 4), align 8
  %178 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %179 = load i32, i32* @PRINT_ALL, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 4), align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i8*, i8** %1, align 8
  %185 = call i32 %178(i32 %179, i8* %183, i8* %184)
  br label %193

186:                                              ; preds = %166
  %187 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %188 = load i32, i32* @PRINT_ALL, align 4
  %189 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %190 = load i8*, i8** %189, align 16
  %191 = load i8*, i8** %1, align 8
  %192 = call i32 %187(i32 %188, i8* %190, i8* %191)
  br label %193

193:                                              ; preds = %186, %170
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %195 = load i32, i32* @GL_SHADING_LANGUAGE_VERSION, align 4
  %196 = call i64 @qglGetString(i32 %195)
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @Q_strncpyz(i8* %194, i8* %197, i32 256)
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %200 = call i32 @sscanf(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 10), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 9))
  %201 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %202 = load i32, i32* @PRINT_ALL, align 4
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %204 = call i32 %201(i32 %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %203)
  %205 = load i64, i64* @MI_NONE, align 8
  store i64 %205, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  %206 = load i8*, i8** %1, align 8
  %207 = call i64 @SDL_GL_ExtensionSupported(i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %193
  %210 = load i64, i64* @MI_NVX, align 8
  store i64 %210, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 5), align 8
  %211 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %212 = load i32, i32* @PRINT_ALL, align 4
  %213 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 1
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** %1, align 8
  %216 = call i32 %211(i32 %212, i8* %214, i8* %215)
  br label %224

217:                                              ; preds = %193
  %218 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %219 = load i32, i32* @PRINT_ALL, align 4
  %220 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %221 = load i8*, i8** %220, align 16
  %222 = load i8*, i8** %1, align 8
  %223 = call i32 %218(i32 %219, i8* %221, i8* %222)
  br label %224

224:                                              ; preds = %217, %209
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  %225 = load i8*, i8** %1, align 8
  %226 = call i64 @SDL_GL_ExtensionSupported(i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %224
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 5), align 8
  %230 = load i64, i64* @MI_NONE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load i64, i64* @MI_ATI, align 8
  store i64 %233, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 5), align 8
  %234 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %235 = load i32, i32* @PRINT_ALL, align 4
  %236 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 1
  %237 = load i8*, i8** %236, align 8
  %238 = load i8*, i8** %1, align 8
  %239 = call i32 %234(i32 %235, i8* %237, i8* %238)
  br label %247

240:                                              ; preds = %228
  %241 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %242 = load i32, i32* @PRINT_ALL, align 4
  %243 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 0
  %244 = load i8*, i8** %243, align 16
  %245 = load i8*, i8** %1, align 8
  %246 = call i32 %241(i32 %242, i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %240, %232
  br label %255

248:                                              ; preds = %224
  %249 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %250 = load i32, i32* @PRINT_ALL, align 4
  %251 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %252 = load i8*, i8** %251, align 16
  %253 = load i8*, i8** %1, align 8
  %254 = call i32 %249(i32 %250, i8* %252, i8* %253)
  br label %255

255:                                              ; preds = %248, %247
  %256 = load i32, i32* @TCR_NONE, align 4
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  %257 = load i8*, i8** %1, align 8
  %258 = call i64 @SDL_GL_ExtensionSupported(i8* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %255
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_ext_compressed_textures, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %263, 1
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %260
  %269 = load i32, i32* @TCR_RGTC, align 4
  %270 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  %271 = or i32 %270, %269
  store i32 %271, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  br label %272

272:                                              ; preds = %268, %260
  %273 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %274 = load i32, i32* @PRINT_ALL, align 4
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** %1, align 8
  %280 = call i32 %273(i32 %274, i8* %278, i8* %279)
  br label %288

281:                                              ; preds = %255
  %282 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %283 = load i32, i32* @PRINT_ALL, align 4
  %284 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %285 = load i8*, i8** %284, align 16
  %286 = load i8*, i8** %1, align 8
  %287 = call i32 %282(i32 %283, i8* %285, i8* %286)
  br label %288

288:                                              ; preds = %281, %272
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_ext_compressed_textures, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  %295 = load i32, i32* @TCR_RGTC, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  br label %299

299:                                              ; preds = %293, %288
  %300 = phi i1 [ false, %288 ], [ %298, %293 ]
  %301 = zext i1 %300 to i32
  store i32 %301, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 7), align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  %302 = load i8*, i8** %1, align 8
  %303 = call i64 @SDL_GL_ExtensionSupported(i8* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %299
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_ext_compressed_textures, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp sge i32 %308, 2
  %310 = zext i1 %309 to i32
  store i32 %310, i32* %7, align 4
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %305
  %314 = load i32, i32* @TCR_BPTC, align 4
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  %316 = or i32 %315, %314
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 6), align 8
  br label %317

317:                                              ; preds = %313, %305
  %318 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %319 = load i32, i32* @PRINT_ALL, align 4
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = load i8*, i8** %1, align 8
  %325 = call i32 %318(i32 %319, i8* %323, i8* %324)
  br label %333

326:                                              ; preds = %299
  %327 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %328 = load i32, i32* @PRINT_ALL, align 4
  %329 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %330 = load i8*, i8** %329, align 16
  %331 = load i8*, i8** %1, align 8
  %332 = call i32 %327(i32 %328, i8* %330, i8* %331)
  br label %333

333:                                              ; preds = %326, %317
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  %334 = load i8*, i8** @qfalse, align 8
  %335 = ptrtoint i8* %334 to i32
  store i32 %335, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 8), align 8
  %336 = load i8*, i8** %1, align 8
  %337 = call i64 @SDL_GL_ExtensionSupported(i8* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %360

339:                                              ; preds = %333
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_ext_direct_state_access, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  %344 = xor i1 %343, true
  %345 = xor i1 %344, true
  %346 = zext i1 %345 to i32
  store i32 %346, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 8), align 8
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 8), align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %339
  %350 = load i32, i32* @QGL_EXT_direct_state_access_PROCS, align 4
  br label %351

351:                                              ; preds = %349, %339
  %352 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %353 = load i32, i32* @PRINT_ALL, align 4
  %354 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glRefConfig, i32 0, i32 8), align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = load i8*, i8** %1, align 8
  %359 = call i32 %352(i32 %353, i8* %357, i8* %358)
  br label %367

360:                                              ; preds = %333
  %361 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %362 = load i32, i32* @PRINT_ALL, align 4
  %363 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 2
  %364 = load i8*, i8** %363, align 16
  %365 = load i8*, i8** %1, align 8
  %366 = call i32 %361(i32 %362, i8* %364, i8* %365)
  br label %367

367:                                              ; preds = %360, %351
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @QGL_VERSION_ATLEAST(i32, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i64 @qglGetString(i32) #2

declare dso_local i64 @SDL_GL_ExtensionSupported(i8*) #2

declare dso_local i32 @qglGetIntegerv(i32, i32*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
