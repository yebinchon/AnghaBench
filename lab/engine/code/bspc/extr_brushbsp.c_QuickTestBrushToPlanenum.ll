; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_QuickTestBrushToPlanenum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_QuickTestBrushToPlanenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64*, i64*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@mapplanes = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_MAPFILE_PLANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad planenum\00", align 1
@PSIDE_BACK = common dso_local global i32 0, align 4
@PSIDE_FACING = common dso_local global i32 0, align 4
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BOTH = common dso_local global i32 0, align 4
@PLANESIDE_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QuickTestBrushToPlanenum(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mapplanes, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %15
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %55, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MAX_MAPFILE_PLANES, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = call i32 @Error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %23
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @PSIDE_BACK, align 4
  %43 = load i32, i32* @PSIDE_FACING, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %76

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = xor i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PSIDE_FRONT, align 4
  %52 = load i32, i32* @PSIDE_FACING, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = call i32 @BoxOnPlaneSide(i64* %61, i64* %64, %struct.TYPE_8__* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PSIDE_BOTH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 3
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %50, %41
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @BoxOnPlaneSide(i64*, i64*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
