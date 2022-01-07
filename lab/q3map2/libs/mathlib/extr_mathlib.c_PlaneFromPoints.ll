; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PlaneFromPoints.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PlaneFromPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PlaneFromPoints(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @VectorSubtract(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @VectorSubtract(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @CrossProduct(i32 %20, i32 %21, i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @VectorNormalize(i32* %24, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @qfalse, align 4
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @DotProduct(i32 %31, i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @qtrue, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32*) #1

declare dso_local i64 @VectorNormalize(i32*, i32*) #1

declare dso_local i32 @DotProduct(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
