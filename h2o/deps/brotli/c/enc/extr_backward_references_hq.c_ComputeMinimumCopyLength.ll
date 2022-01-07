; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ComputeMinimumCopyLength.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ComputeMinimumCopyLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (float, %struct.TYPE_5__*, i64, i64)* @ComputeMinimumCopyLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ComputeMinimumCopyLength(float %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store float %0, float* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load float, float* %5, align 4
  store float %13, float* %9, align 4
  store i64 2, i64* %10, align 8
  store i64 4, i64* %11, align 8
  store i64 10, i64* %12, align 8
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* %7, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = load float, float* %9, align 4
  %30 = fcmp ole float %28, %29
  br label %31

31:                                               ; preds = %20, %14
  %32 = phi i1 [ false, %14 ], [ %30, %20 ]
  br i1 %32, label %33, label %48

33:                                               ; preds = %31
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load float, float* %9, align 4
  %41 = fadd float %40, 1.000000e+00
  store float %41, float* %9, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul i64 %45, 2
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %39, %33
  br label %14

48:                                               ; preds = %31
  %49 = load i64, i64* %10, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
