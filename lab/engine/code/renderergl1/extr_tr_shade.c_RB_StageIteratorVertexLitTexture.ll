; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorVertexLitTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorVertexLitTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64, i64, i32, i32, %struct.TYPE_8__**, i32, i32, i32**, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"--- RB_StageIteratorVertexLitTexturedUnfogged( %s ) ---\0A\00", align 1
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorVertexLitTexture() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* @tess, %struct.TYPE_10__** %1, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 9, i32 0), align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @RB_CalcDiffuseColor(i8* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_logFile, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @va(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @GLimp_LogComment(i8* %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @GL_Cull(i32 %22)
  %24 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %25 = call i32 @qglEnableClientState(i32 %24)
  %26 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %27 = call i32 @qglEnableClientState(i32 %26)
  %28 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 9, i32 0), align 8
  %30 = call i32 @qglColorPointer(i32 4, i32 %28, i32 0, i64 %29)
  %31 = load i32, i32* @GL_FLOAT, align 4
  %32 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 8), align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @qglTexCoordPointer(i32 2, i32 %31, i32 16, i32 %36)
  %38 = load i32, i32* @GL_FLOAT, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qglVertexPointer(i32 3, i32 %38, i32 16, i32 %41)
  br i1 true, label %43, label %49

43:                                               ; preds = %19
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @qglLockArraysEXT(i32 0, i32 %46)
  %48 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %19
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 5), align 8
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @R_BindAnimatedImage(i32* %55)
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 5), align 8
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GL_State(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @R_DrawElements(i32 %65, i32 %68)
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %49
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SS_OPAQUE, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (...) @ProjectDlightTexture()
  br label %80

80:                                               ; preds = %78, %72, %49
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @RB_FogPass()
  br label %90

90:                                               ; preds = %88, %83, %80
  br i1 true, label %91, label %94

91:                                               ; preds = %90
  %92 = call i32 (...) @qglUnlockArraysEXT()
  %93 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %90
  ret void
}

declare dso_local i32 @RB_CalcDiffuseColor(i8*) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i64) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @R_BindAnimatedImage(i32*) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
