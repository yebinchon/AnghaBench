; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PlaneFromPoints.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PlaneFromPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @CM_PlaneFromPoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_PlaneFromPoints(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = call i64 @VectorNormalize(i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @DotProduct(i32 %30, i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @qtrue, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32*) #1

declare dso_local i64 @VectorNormalize(i32*) #1

declare dso_local i32 @DotProduct(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
