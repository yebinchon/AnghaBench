; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_normalize_query_rate_weights.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_normalize_query_rate_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@query_rate_weights = common dso_local global i32 0, align 4
@QRW = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @normalize_query_rate_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_query_rate_weights() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @query_rate_weights, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load double, double* %3, align 8
  %16 = fadd double %15, %14
  store double %16, double* %3, align 8
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load double, double* %3, align 8
  %22 = fcmp olt double %21, 1.000000e-09
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %1, align 4
  br label %44

24:                                               ; preds = %20
  %25 = load double, double* %3, align 8
  %26 = fdiv double 1.000000e+00, %25
  store double %26, double* %3, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %40, %24
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @query_rate_weights, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load double, double* %3, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, %32
  store double %39, double* %37, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %27

43:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
