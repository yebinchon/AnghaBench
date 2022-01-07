; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_BeginFrameCustomView.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_BeginFrameCustomView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@glConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@qfalse = common dso_local global i8* null, align 8
@glState = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@r_textureMode = common dso_local global %struct.TYPE_18__* null, align 8
@r_gamma = common dso_local global %struct.TYPE_20__* null, align 8
@r_ignoreGLErrors = common dso_local global %struct.TYPE_19__* null, align 8
@GL_NO_ERROR = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RE_BeginFrame() - glGetError() failed (0x%x)!\00", align 1
@RC_DRAW_BUFFER = common dso_local global i32 0, align 4
@r_drawBuffer = common dso_local global %struct.TYPE_21__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"GL_FRONT\00", align 1
@GL_FRONT = common dso_local global i64 0, align 8
@GL_BACK = common dso_local global i64 0, align 8
@STEREO_CENTER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_BeginFrameCustomView() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca i32, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %1, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %81

6:                                                ; preds = %0
  %7 = call i32 @SwapVidAndBuff(%struct.TYPE_13__* @glConfig)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 1), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 3), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 0), align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 2), align 4
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @glState, i32 0, i32 0), align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_textureMode, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = call i32 (...) @R_IssuePendingRenderCommands()
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_textureMode, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @GL_TextureMode(i32 %19)
  %21 = load i8*, i8** @qfalse, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_textureMode, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %15, %6
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_gamma, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8*, i8** @qfalse, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_gamma, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = call i32 (...) @R_IssuePendingRenderCommands()
  %34 = call i32 (...) @R_SetColorMappings()
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_ignoreGLErrors, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = call i32 (...) @R_IssuePendingRenderCommands()
  %42 = call i32 (...) @qglGetError()
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @GL_NO_ERROR, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %47 = load i32, i32* @ERR_FATAL, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 %46(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = call %struct.TYPE_15__* @R_GetCommandBuffer(i32 8)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %1, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %81

55:                                               ; preds = %51
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* @RC_DRAW_BUFFER, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_drawBuffer, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Q_stricmp(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* @GL_FRONT, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %77

72:                                               ; preds = %58
  %73 = load i64, i64* @GL_BACK, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* @STEREO_CENTER, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 1), align 4
  %80 = load i32, i32* @qtrue, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 0), align 4
  br label %81

81:                                               ; preds = %78, %54, %5
  ret void
}

declare dso_local i32 @SwapVidAndBuff(%struct.TYPE_13__*) #1

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @GL_TextureMode(i32) #1

declare dso_local i32 @R_SetColorMappings(...) #1

declare dso_local i32 @qglGetError(...) #1

declare dso_local %struct.TYPE_15__* @R_GetCommandBuffer(i32) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
