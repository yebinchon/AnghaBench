; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_EvaluateNode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_EvaluateNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_10__ = type { i64, float, float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i32*, i32*, i32*, %struct.TYPE_9__*)* @EvaluateNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EvaluateNode(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_9__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_10__, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %16, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  store float %24, float* %17, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %30 = call i32 @ComputeDistanceShortcut(i64 %25, i64 %26, i64 %27, i64 %28, %struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load float, float* %17, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call float @ZopfliCostModelGetLiteralCosts(i32* %37, i32 0, i64 %38)
  %40 = fcmp ole float %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load float, float* %17, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store float %44, float* %45, align 8
  %46 = load float, float* %17, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call float @ZopfliCostModelGetLiteralCosts(i32* %47, i32 0, i64 %48)
  %50 = fsub float %46, %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  store float %50, float* %51, align 4
  %52 = load i64, i64* %10, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ComputeDistanceCache(i64 %52, i32* %53, %struct.TYPE_9__* %54, i32 %56)
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @StartPosQueuePush(i32* %58, %struct.TYPE_10__* %18)
  br label %60

60:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @ComputeDistanceShortcut(i64, i64, i64, i64, %struct.TYPE_9__*) #1

declare dso_local float @ZopfliCostModelGetLiteralCosts(i32*, i32, i64) #1

declare dso_local i32 @ComputeDistanceCache(i64, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @StartPosQueuePush(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
