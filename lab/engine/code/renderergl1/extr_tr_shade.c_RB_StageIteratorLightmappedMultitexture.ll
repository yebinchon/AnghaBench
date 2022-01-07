; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorLightmappedMultitexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorLightmappedMultitexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i64, i32, i32, i32, i32**, %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"--- RB_StageIteratorLightmappedMultitexture( %s ) ---\0A\00", align 1
@GLS_DEFAULT = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@r_lightmap = common dso_local global %struct.TYPE_11__* null, align 8
@GL_REPLACE = common dso_local global i32 0, align 4
@GL_MODULATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1
@GL_FLAT = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorLightmappedMultitexture() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* @tess, %struct.TYPE_9__** %1, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_logFile, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @va(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @GLimp_LogComment(i8* %14)
  br label %16

16:                                               ; preds = %10, %0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @GL_Cull(i32 %19)
  %21 = load i32, i32* @GLS_DEFAULT, align 4
  %22 = call i32 @GL_State(i32 %21)
  %23 = load i32, i32* @GL_FLOAT, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @qglVertexPointer(i32 3, i32 %23, i32 16, i32 %26)
  %28 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %29 = call i32 @qglEnableClientState(i32 %28)
  %30 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %32 = call i32 @qglColorPointer(i32 4, i32 %30, i32 0, i32 %31)
  %33 = call i32 @GL_SelectTexture(i32 0)
  %34 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %35 = call i32 @qglEnableClientState(i32 %34)
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %37 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @R_BindAnimatedImage(i32* %41)
  %43 = load i32, i32* @GL_FLOAT, align 4
  %44 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qglTexCoordPointer(i32 2, i32 %43, i32 16, i32 %48)
  %50 = call i32 @GL_SelectTexture(i32 1)
  %51 = load i32, i32* @GL_TEXTURE_2D, align 4
  %52 = call i32 @qglEnable(i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_lightmap, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %16
  %58 = load i32, i32* @GL_REPLACE, align 4
  %59 = call i32 @GL_TexEnv(i32 %58)
  br label %63

60:                                               ; preds = %16
  %61 = load i32, i32* @GL_MODULATE, align 4
  %62 = call i32 @GL_TexEnv(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %65 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @R_BindAnimatedImage(i32* %69)
  %71 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %72 = call i32 @qglEnableClientState(i32 %71)
  %73 = load i32, i32* @GL_FLOAT, align 4
  %74 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qglTexCoordPointer(i32 2, i32 %73, i32 16, i32 %78)
  br i1 true, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @qglLockArraysEXT(i32 0, i32 %83)
  %85 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %63
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @R_DrawElements(i32 %89, i32 %92)
  %94 = load i32, i32* @GL_TEXTURE_2D, align 4
  %95 = call i32 @qglDisable(i32 %94)
  %96 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %97 = call i32 @qglDisableClientState(i32 %96)
  %98 = call i32 @GL_SelectTexture(i32 0)
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %86
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SS_OPAQUE, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (...) @ProjectDlightTexture()
  br label %109

109:                                              ; preds = %107, %101, %86
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @RB_FogPass()
  br label %119

119:                                              ; preds = %117, %112, %109
  br i1 true, label %120, label %123

120:                                              ; preds = %119
  %121 = call i32 (...) @qglUnlockArraysEXT()
  %122 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %119
  ret void
}

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @R_BindAnimatedImage(i32*) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @GL_TexEnv(i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglDisableClientState(i32) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
