; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_BoundsIntersect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_BoundsIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SURFACE_CLIP_EPSILON = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_BoundsIntersect(i64* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %17 = sub nsw i64 %15, %16
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %69, label %19

19:                                               ; preds = %4
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp slt i64 %22, %27
  br i1 %28, label %69, label %29

29:                                               ; preds = %19
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %37 = sub nsw i64 %35, %36
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %69, label %39

39:                                               ; preds = %29
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %39
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp sgt i64 %52, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %49
  %60 = load i64*, i64** %6, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SURFACE_CLIP_EPSILON, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sgt i64 %62, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59, %49, %39, %29, %19, %4
  %70 = load i32, i32* @qfalse, align 4
  store i32 %70, i32* %5, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
