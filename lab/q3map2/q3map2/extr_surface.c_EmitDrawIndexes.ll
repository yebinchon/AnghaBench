; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitDrawIndexes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitDrawIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@numBSPDrawIndexes = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_INDEXES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"MAX_MAP_DRAW_INDEXES\00", align 1
@bspDrawIndexes = common dso_local global i64* null, align 8
@SURFACE_PATCH = common dso_local global i64 0, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"WARNING: %d %s has invalid index %d (%d)\0A\00", align 1
@numBSPDrawSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitDrawIndexes(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 @FindDrawIndexes(i32 %8, i64* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @numBSPDrawIndexes, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %90, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %26
  %33 = load i64, i64* @numBSPDrawIndexes, align 8
  %34 = load i64, i64* @MAX_MAP_DRAW_INDEXES, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** @bspDrawIndexes, align 8
  %47 = load i64, i64* @numBSPDrawIndexes, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SURFACE_PATCH, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %38
  %55 = load i64*, i64** @bspDrawIndexes, align 8
  %56 = load i64, i64* @numBSPDrawIndexes, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load i64*, i64** @bspDrawIndexes, align 8
  %62 = load i64, i64* @numBSPDrawIndexes, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %60, %54
  %70 = load i32, i32* @SYS_WRN, align 4
  %71 = load i32, i32* @numBSPDrawSurfaces, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64*, i64** @bspDrawIndexes, align 8
  %78 = load i64, i64* @numBSPDrawIndexes, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @Sys_FPrintf(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %76, i64 %80, i32 %81)
  %83 = load i64*, i64** @bspDrawIndexes, align 8
  %84 = load i64, i64* @numBSPDrawIndexes, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %69, %60
  br label %87

87:                                               ; preds = %86, %38
  %88 = load i64, i64* @numBSPDrawIndexes, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* @numBSPDrawIndexes, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %26

93:                                               ; preds = %26
  br label %94

94:                                               ; preds = %93, %2
  ret void
}

declare dso_local i64 @FindDrawIndexes(i32, i64*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
