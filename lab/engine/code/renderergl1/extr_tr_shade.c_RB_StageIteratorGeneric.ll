; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorGeneric.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_StageIteratorGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64, i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"--- RB_StageIteratorGeneric( %s ) ---\0A\00", align 1
@GL_POLYGON_OFFSET_FILL = common dso_local global i32 0, align 4
@r_offsetFactor = common dso_local global %struct.TYPE_13__* null, align 8
@r_offsetUnits = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@setArraysOnce = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@SS_OPAQUE = common dso_local global i64 0, align 8
@SURF_NODLIGHT = common dso_local global i32 0, align 4
@SURF_SKY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorGeneric() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* @tess, %struct.TYPE_11__** %1, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %2, align 8
  %6 = call i32 (...) @RB_DeformTessGeometry()
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_logFile, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @va(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @GLimp_LogComment(i8* %15)
  br label %17

17:                                               ; preds = %11, %0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GL_Cull(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %28 = call i32 @qglEnable(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_offsetFactor, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_offsetUnits, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qglPolygonOffset(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %17
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* @setArraysOnce, align 4
  %46 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %47 = call i32 @qglDisableClientState(i32 %46)
  %48 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %49 = call i32 @qglDisableClientState(i32 %48)
  br label %64

50:                                               ; preds = %39
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* @setArraysOnce, align 4
  %52 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %53 = call i32 @qglEnableClientState(i32 %52)
  %54 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 6, i32 1), align 8
  %56 = call i32 @qglColorPointer(i32 4, i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %58 = call i32 @qglEnableClientState(i32 %57)
  %59 = load i32, i32* @GL_FLOAT, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 6, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qglTexCoordPointer(i32 2, i32 %59, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %50, %44
  %65 = load i32, i32* @GL_FLOAT, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qglVertexPointer(i32 3, i32 %65, i32 16, i32 %68)
  br i1 true, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @qglLockArraysEXT(i32 0, i32 %73)
  %75 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @setArraysOnce, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %81 = call i32 @qglEnableClientState(i32 %80)
  %82 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %83 = call i32 @qglEnableClientState(i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %86 = call i32 @RB_IterateStagesGeneric(%struct.TYPE_11__* %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 3), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SS_OPAQUE, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SURF_NODLIGHT, align 4
  %100 = load i32, i32* @SURF_SKY, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = call i32 (...) @ProjectDlightTexture()
  br label %106

106:                                              ; preds = %104, %95, %89, %84
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 2), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (...) @RB_FogPass()
  br label %116

116:                                              ; preds = %114, %109, %106
  br i1 true, label %117, label %120

117:                                              ; preds = %116
  %118 = call i32 (...) @qglUnlockArraysEXT()
  %119 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %116
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %127 = call i32 @qglDisable(i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  ret void
}

declare dso_local i32 @RB_DeformTessGeometry(...) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglPolygonOffset(i32, i32) #1

declare dso_local i32 @qglDisableClientState(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @RB_IterateStagesGeneric(%struct.TYPE_11__*) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

declare dso_local i32 @qglDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
