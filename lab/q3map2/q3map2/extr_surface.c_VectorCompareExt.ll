; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_VectorCompareExt.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_VectorCompareExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VectorCompareExt(i64* %0, i64* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store float %2, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i64*, i64** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %17, %22
  %24 = call float @fabs(i64 %23)
  %25 = load float, float* %7, align 4
  %26 = fcmp ogt float %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* @qtrue, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local float @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
