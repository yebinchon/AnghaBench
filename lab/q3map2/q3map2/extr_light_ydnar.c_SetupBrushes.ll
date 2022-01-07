; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"--- SetupBrushes ---\0A\00", align 1
@opaqueBrushes = common dso_local global i32* null, align 8
@numBSPBrushes = common dso_local global i32 0, align 4
@numOpaqueBrushes = common dso_local global i64 0, align 8
@bspModels = common dso_local global %struct.TYPE_14__* null, align 8
@bspBrushes = common dso_local global %struct.TYPE_12__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@bspBrushSides = common dso_local global %struct.TYPE_13__* null, align 8
@bspShaders = common dso_local global %struct.TYPE_11__* null, align 8
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@maxOpaqueBrush = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%9d opaque brushes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupBrushes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = load i32, i32* @SYS_VRB, align 4
  %11 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** @opaqueBrushes, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @numBSPBrushes, align 4
  %16 = sdiv i32 %15, 8
  %17 = add nsw i32 %16, 1
  %18 = call i32* @safe_malloc(i32 %17)
  store i32* %18, i32** @opaqueBrushes, align 8
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i32*, i32** @opaqueBrushes, align 8
  %21 = load i32, i32* @numBSPBrushes, align 4
  %22 = sdiv i32 %21, 8
  %23 = add nsw i32 %22, 1
  %24 = call i32 @memset(i32* %20, i32 0, i32 %23)
  store i64 0, i64* @numOpaqueBrushes, align 8
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %105, %19
  %26 = load i32, i32* %1, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bspModels, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bspModels, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspBrushes, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %6, align 8
  %43 = load i64, i64* @qtrue, align 8
  store i64 %43, i64* %5, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %82, %32
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i1 [ false, %44 ], [ %52, %50 ]
  br i1 %54, label %55, label %85

55:                                               ; preds = %53
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspBrushSides, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %62
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspShaders, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %67
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_10__* @ShaderInfoForShader(i32 %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %9, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %82

76:                                               ; preds = %55
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %75
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %44

85:                                               ; preds = %53
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @C_TRANSLUCENT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 7
  %93 = shl i32 1, %92
  %94 = load i32*, i32** @opaqueBrushes, align 8
  %95 = load i32, i32* %3, align 4
  %96 = ashr i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load i64, i64* @numOpaqueBrushes, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* @numOpaqueBrushes, align 8
  %103 = load i32, i32* %1, align 4
  store i32 %103, i32* @maxOpaqueBrush, align 4
  br label %104

104:                                              ; preds = %90, %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %25

108:                                              ; preds = %25
  %109 = load i32, i32* @SYS_VRB, align 4
  %110 = load i64, i64* @numOpaqueBrushes, align 8
  %111 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ShaderInfoForShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
