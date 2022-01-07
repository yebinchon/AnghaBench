; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogForPoint.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogForPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }

@defaultFogNum = common dso_local global i32 0, align 4
@numMapFogs = common dso_local global i32 0, align 4
@mapFogs = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_7__* null, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FogForPoint(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %13 = load i32, i32* @defaultFogNum, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %84, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @numMapFogs, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp eq %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %6, align 4
  br label %84

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %11, align 8
  %35 = load i64, i64* @qtrue, align 8
  store i64 %35, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %75, %28
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i1 [ false, %36 ], [ %44, %42 ]
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapplanes, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %56
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %12, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call float @DotProduct(i32 %58, i32 %61)
  store float %62, float* %9, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = load float, float* %9, align 4
  %68 = fsub float %67, %66
  store float %68, float* %9, align 4
  %69 = load float, float* %9, align 4
  %70 = load float, float* %5, align 4
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %47
  %73 = load i64, i64* @qfalse, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %72, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %36

78:                                               ; preds = %45
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %89

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %26
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %14

87:                                               ; preds = %14
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %81
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
