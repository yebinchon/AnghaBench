; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_BoundsIntersectPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_BoundsIntersectPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SURFACE_CLIP_EPSILON = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_BoundsIntersectPoint(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %15 = sub nsw i64 %13, %14
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %67, label %17

17:                                               ; preds = %3
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %25 = sub nsw i64 %23, %24
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %67, label %27

27:                                               ; preds = %17
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %67, label %37

37:                                               ; preds = %27
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %40, %45
  br i1 %46, label %67, label %47

47:                                               ; preds = %37
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %55 = add nsw i64 %53, %54
  %56 = icmp sgt i64 %50, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57, %47, %37, %27, %17, %3
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @qtrue, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
