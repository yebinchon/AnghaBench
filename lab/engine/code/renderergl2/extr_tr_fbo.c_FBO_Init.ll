; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i8*, float)*, i32 (i32, i8*)* }
%struct.TYPE_17__ = type { i64, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__**, %struct.TYPE_11__**, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__**, %struct.TYPE_11__**, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__**, %struct.TYPE_11__**, %struct.TYPE_18__**, %struct.TYPE_11__**, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__*, %struct.TYPE_11__*, %struct.TYPE_18__*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"------- FBO_Init -------\0A\00", align 1
@glRefConfig = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GL_RGBA8 = common dso_local global i32 0, align 4
@r_hdr = common dso_local global %struct.TYPE_14__* null, align 8
@GL_RGBA16F_ARB = common dso_local global i32 0, align 4
@GL_MAX_SAMPLES = common dso_local global i32 0, align 4
@r_ext_framebuffer_multisample = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"r_ext_framebuffer_multisample\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_render\00", align 1
@GL_DEPTH_COMPONENT24 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"_msaaResolve\00", align 1
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"screenScratch\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_sunRays\00", align 1
@MAX_DRAWN_PSHADOWS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"_shadowmap%d\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"_sunshadowmap\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"_screenshadow\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"_texturescratch%d\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"_calclevels\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"_targetlevels\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"_quarter%d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_hdrDepth\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"_screenssao\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"_renderCubeFbo\00", align 1
@GL_DEPTH_COMPONENT24_ARB = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FBO_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 1), align 8
  %5 = load i32, i32* @PRINT_ALL, align 4
  %6 = call i32 %4(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 3), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %529

10:                                               ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 28), align 8
  %11 = call i32 (...) @GL_CheckErrors()
  %12 = call i32 (...) @R_IssuePendingRenderCommands()
  %13 = load i32, i32* @GL_RGBA8, align 4
  store i32 %13, i32* %2, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_hdr, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 2), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @GL_RGBA16F_ARB, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %18, %10
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @GL_MAX_SAMPLES, align 4
  %28 = call i32 @qglGetIntegerv(i32 %27, i32* %3)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_ext_framebuffer_multisample, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_ext_framebuffer_multisample, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 1), align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %39
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_ext_framebuffer_multisample, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32 (i8*, float)*, i32 (i8*, float)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %54 = load i32, i32* %3, align 4
  %55 = sitofp i32 %54 to float
  %56 = call i32 %53(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), float %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %57
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @glRefConfig, i32 0, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @FBO_Create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @FBO_CreateBuffer(%struct.TYPE_18__* %72, i32 %73, i32 0, i32 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %77 = load i32, i32* @GL_DEPTH_COMPONENT24, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @FBO_CreateBuffer(%struct.TYPE_18__* %76, i32 %77, i32 0, i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %81 = call i32 @R_CheckFBO(%struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @FBO_Create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 27), align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 27), align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 26), align 8
  %92 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %93 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %90, %struct.TYPE_11__* %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 27), align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %96 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %97 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %94, %struct.TYPE_11__* %95, i32 %96, i32 0)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 27), align 8
  %99 = call i32 @R_CheckFBO(%struct.TYPE_18__* %98)
  br label %125

100:                                              ; preds = %60, %57
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_hdr, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @FBO_Create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 26), align 8
  %116 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %117 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %114, %struct.TYPE_11__* %115, i32 %116, i32 0)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %120 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %121 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %118, %struct.TYPE_11__* %119, i32 %120, i32 0)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %123 = call i32 @R_CheckFBO(%struct.TYPE_18__* %122)
  br label %124

124:                                              ; preds = %105, %100
  br label %125

125:                                              ; preds = %124, %63
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %127 = icmp ne %struct.TYPE_18__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 25), align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @GL_BindFramebuffer(i32 %129, i32 %132)
  %134 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %135 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @qglClear(i32 %136)
  br label %138

138:                                              ; preds = %128, %125
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 24), align 8
  %140 = icmp ne %struct.TYPE_11__* %139, null
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 24), align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 24), align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @FBO_Create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 23), align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 23), align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 24), align 8
  %152 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %153 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %150, %struct.TYPE_11__* %151, i32 %152, i32 0)
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 23), align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %156 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %157 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %154, %struct.TYPE_11__* %155, i32 %156, i32 0)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 23), align 8
  %159 = call i32 @R_CheckFBO(%struct.TYPE_18__* %158)
  br label %160

160:                                              ; preds = %141, %138
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 22), align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %163, label %182

163:                                              ; preds = %160
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @FBO_Create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %166, i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 20), align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 20), align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 22), align 8
  %174 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %175 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %172, %struct.TYPE_11__* %173, i32 %174, i32 0)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 20), align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 21), align 8
  %178 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %179 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %176, %struct.TYPE_11__* %177, i32 %178, i32 0)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 20), align 8
  %181 = call i32 @R_CheckFBO(%struct.TYPE_18__* %180)
  br label %182

182:                                              ; preds = %163, %160
  %183 = load i32, i32* @MAX_DRAWN_PSHADOWS, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %247

185:                                              ; preds = %182
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 19), align 8
  %187 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = icmp ne %struct.TYPE_11__* %188, null
  br i1 %189, label %190, label %247

190:                                              ; preds = %185
  store i32 0, i32* %1, align 4
  br label %191

191:                                              ; preds = %243, %190
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* @MAX_DRAWN_PSHADOWS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %246

195:                                              ; preds = %191
  %196 = load i32, i32* %1, align 4
  %197 = call i8* @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 19), align 8
  %199 = load i32, i32* %1, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %198, i64 %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 19), align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %205, i64 %207
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @FBO_Create(i8* %197, i32 %204, i32 %211)
  %213 = bitcast i8* %212 to %struct.TYPE_18__*
  %214 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 18), align 8
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %214, i64 %216
  store %struct.TYPE_18__* %213, %struct.TYPE_18__** %217, align 8
  %218 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 18), align 8
  %219 = load i32, i32* %1, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %218, i64 %220
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = load i32, i32* @GL_RGBA8, align 4
  %224 = call i32 @FBO_CreateBuffer(%struct.TYPE_18__* %222, i32 %223, i32 0, i32 0)
  %225 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 18), align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %225, i64 %227
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 19), align 8
  %231 = load i32, i32* %1, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %230, i64 %232
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %236 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %229, %struct.TYPE_11__* %234, i32 %235, i32 0)
  %237 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 18), align 8
  %238 = load i32, i32* %1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %237, i64 %239
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = call i32 @R_CheckFBO(%struct.TYPE_18__* %241)
  br label %243

243:                                              ; preds = %195
  %244 = load i32, i32* %1, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %1, align 4
  br label %191

246:                                              ; preds = %191
  br label %247

247:                                              ; preds = %246, %185, %182
  %248 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 17), align 8
  %249 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %248, i64 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = icmp ne %struct.TYPE_11__* %250, null
  br i1 %251, label %252, label %306

252:                                              ; preds = %247
  store i32 0, i32* %1, align 4
  br label %253

253:                                              ; preds = %302, %252
  %254 = load i32, i32* %1, align 4
  %255 = icmp slt i32 %254, 4
  br i1 %255, label %256, label %305

256:                                              ; preds = %253
  %257 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 17), align 8
  %258 = load i32, i32* %1, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %257, i64 %259
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 17), align 8
  %265 = load i32, i32* %1, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %264, i64 %266
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @FBO_Create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %263, i32 %270)
  %272 = bitcast i8* %271 to %struct.TYPE_18__*
  %273 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 16), align 8
  %274 = load i32, i32* %1, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %273, i64 %275
  store %struct.TYPE_18__* %272, %struct.TYPE_18__** %276, align 8
  %277 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 16), align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %277, i64 %279
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = load i32, i32* @GL_RGBA8, align 4
  %283 = call i32 @FBO_CreateBuffer(%struct.TYPE_18__* %281, i32 %282, i32 0, i32 0)
  %284 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 16), align 8
  %285 = load i32, i32* %1, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %284, i64 %286
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 17), align 8
  %290 = load i32, i32* %1, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %289, i64 %291
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %295 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %288, %struct.TYPE_11__* %293, i32 %294, i32 0)
  %296 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 16), align 8
  %297 = load i32, i32* %1, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %296, i64 %298
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %299, align 8
  %301 = call i32 @R_CheckFBO(%struct.TYPE_18__* %300)
  br label %302

302:                                              ; preds = %256
  %303 = load i32, i32* %1, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %1, align 4
  br label %253

305:                                              ; preds = %253
  br label %306

306:                                              ; preds = %305, %247
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 15), align 8
  %308 = icmp ne %struct.TYPE_11__* %307, null
  br i1 %308, label %309, label %324

309:                                              ; preds = %306
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 15), align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 15), align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @FBO_Create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %312, i32 %315)
  %317 = bitcast i8* %316 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %317, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 14), align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 14), align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 15), align 8
  %320 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %321 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %318, %struct.TYPE_11__* %319, i32 %320, i32 0)
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 14), align 8
  %323 = call i32 @R_CheckFBO(%struct.TYPE_18__* %322)
  br label %324

324:                                              ; preds = %309, %306
  %325 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 13), align 8
  %326 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %325, i64 0
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = icmp ne %struct.TYPE_11__* %327, null
  br i1 %328, label %329, label %378

329:                                              ; preds = %324
  store i32 0, i32* %1, align 4
  br label %330

330:                                              ; preds = %374, %329
  %331 = load i32, i32* %1, align 4
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %377

333:                                              ; preds = %330
  %334 = load i32, i32* %1, align 4
  %335 = call i8* @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %334)
  %336 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 13), align 8
  %337 = load i32, i32* %1, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %336, i64 %338
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 13), align 8
  %344 = load i32, i32* %1, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %343, i64 %345
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @FBO_Create(i8* %335, i32 %342, i32 %349)
  %351 = bitcast i8* %350 to %struct.TYPE_18__*
  %352 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 12), align 8
  %353 = load i32, i32* %1, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %352, i64 %354
  store %struct.TYPE_18__* %351, %struct.TYPE_18__** %355, align 8
  %356 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 12), align 8
  %357 = load i32, i32* %1, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %356, i64 %358
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %359, align 8
  %361 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 13), align 8
  %362 = load i32, i32* %1, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %361, i64 %363
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %364, align 8
  %366 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %367 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %360, %struct.TYPE_11__* %365, i32 %366, i32 0)
  %368 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 12), align 8
  %369 = load i32, i32* %1, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %368, i64 %370
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = call i32 @R_CheckFBO(%struct.TYPE_18__* %372)
  br label %374

374:                                              ; preds = %333
  %375 = load i32, i32* %1, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %1, align 4
  br label %330

377:                                              ; preds = %330
  br label %378

378:                                              ; preds = %377, %324
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 11), align 8
  %380 = icmp ne %struct.TYPE_11__* %379, null
  br i1 %380, label %381, label %396

381:                                              ; preds = %378
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 11), align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 11), align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i8* @FBO_Create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %384, i32 %387)
  %389 = bitcast i8* %388 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %389, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 10), align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 10), align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 11), align 8
  %392 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %393 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %390, %struct.TYPE_11__* %391, i32 %392, i32 0)
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 10), align 8
  %395 = call i32 @R_CheckFBO(%struct.TYPE_18__* %394)
  br label %396

396:                                              ; preds = %381, %378
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 9), align 8
  %398 = icmp ne %struct.TYPE_11__* %397, null
  br i1 %398, label %399, label %414

399:                                              ; preds = %396
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 9), align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 9), align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = call i8* @FBO_Create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %402, i32 %405)
  %407 = bitcast i8* %406 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %407, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 8), align 8
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 8), align 8
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 9), align 8
  %410 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %411 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %408, %struct.TYPE_11__* %409, i32 %410, i32 0)
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 8), align 8
  %413 = call i32 @R_CheckFBO(%struct.TYPE_18__* %412)
  br label %414

414:                                              ; preds = %399, %396
  %415 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 7), align 8
  %416 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %415, i64 0
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %416, align 8
  %418 = icmp ne %struct.TYPE_11__* %417, null
  br i1 %418, label %419, label %468

419:                                              ; preds = %414
  store i32 0, i32* %1, align 4
  br label %420

420:                                              ; preds = %464, %419
  %421 = load i32, i32* %1, align 4
  %422 = icmp slt i32 %421, 2
  br i1 %422, label %423, label %467

423:                                              ; preds = %420
  %424 = load i32, i32* %1, align 4
  %425 = call i8* @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %424)
  %426 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 7), align 8
  %427 = load i32, i32* %1, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %426, i64 %428
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 7), align 8
  %434 = load i32, i32* %1, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %433, i64 %435
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = call i8* @FBO_Create(i8* %425, i32 %432, i32 %439)
  %441 = bitcast i8* %440 to %struct.TYPE_18__*
  %442 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 6), align 8
  %443 = load i32, i32* %1, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %442, i64 %444
  store %struct.TYPE_18__* %441, %struct.TYPE_18__** %445, align 8
  %446 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 6), align 8
  %447 = load i32, i32* %1, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %446, i64 %448
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %449, align 8
  %451 = load %struct.TYPE_11__**, %struct.TYPE_11__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 7), align 8
  %452 = load i32, i32* %1, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %451, i64 %453
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** %454, align 8
  %456 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %457 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %450, %struct.TYPE_11__* %455, i32 %456, i32 0)
  %458 = load %struct.TYPE_18__**, %struct.TYPE_18__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 6), align 8
  %459 = load i32, i32* %1, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %458, i64 %460
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %461, align 8
  %463 = call i32 @R_CheckFBO(%struct.TYPE_18__* %462)
  br label %464

464:                                              ; preds = %423
  %465 = load i32, i32* %1, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %1, align 4
  br label %420

467:                                              ; preds = %420
  br label %468

468:                                              ; preds = %467, %414
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 5), align 8
  %470 = icmp ne %struct.TYPE_11__* %469, null
  br i1 %470, label %471, label %486

471:                                              ; preds = %468
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 5), align 8
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 5), align 8
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = call i8* @FBO_Create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %474, i32 %477)
  %479 = bitcast i8* %478 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %479, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 4), align 8
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 4), align 8
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 5), align 8
  %482 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %483 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %480, %struct.TYPE_11__* %481, i32 %482, i32 0)
  %484 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 4), align 8
  %485 = call i32 @R_CheckFBO(%struct.TYPE_18__* %484)
  br label %486

486:                                              ; preds = %471, %468
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 3), align 8
  %488 = icmp ne %struct.TYPE_11__* %487, null
  br i1 %488, label %489, label %504

489:                                              ; preds = %486
  %490 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 3), align 8
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 3), align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = call i8* @FBO_Create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %492, i32 %495)
  %497 = bitcast i8* %496 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %497, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 2), align 8
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 2), align 8
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 3), align 8
  %500 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %501 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %498, %struct.TYPE_11__* %499, i32 %500, i32 0)
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 2), align 8
  %503 = call i32 @R_CheckFBO(%struct.TYPE_18__* %502)
  br label %504

504:                                              ; preds = %489, %486
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %506 = icmp ne %struct.TYPE_11__* %505, null
  br i1 %506, label %507, label %525

507:                                              ; preds = %504
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = call i8* @FBO_Create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %510, i32 %513)
  %515 = bitcast i8* %514 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %515, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %516 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %518 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %519 = call i32 @FBO_AttachImage(%struct.TYPE_18__* %516, %struct.TYPE_11__* %517, i32 %518, i32 0)
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %521 = load i32, i32* @GL_DEPTH_COMPONENT24_ARB, align 4
  %522 = call i32 @FBO_CreateBuffer(%struct.TYPE_18__* %520, i32 %521, i32 0, i32 0)
  %523 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %524 = call i32 @R_CheckFBO(%struct.TYPE_18__* %523)
  br label %525

525:                                              ; preds = %507, %504
  %526 = call i32 (...) @GL_CheckErrors()
  %527 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %528 = call i32 @GL_BindFramebuffer(i32 %527, i32 0)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @glState, i32 0, i32 0), align 8
  br label %529

529:                                              ; preds = %525, %9
  ret void
}

declare dso_local i32 @GL_CheckErrors(...) #1

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @qglGetIntegerv(i32, i32*) #1

declare dso_local i8* @FBO_Create(i8*, i32, i32) #1

declare dso_local i32 @FBO_CreateBuffer(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @R_CheckFBO(%struct.TYPE_18__*) #1

declare dso_local i32 @FBO_AttachImage(%struct.TYPE_18__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GL_BindFramebuffer(i32, i32) #1

declare dso_local i32 @qglClear(i32) #1

declare dso_local i8* @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
