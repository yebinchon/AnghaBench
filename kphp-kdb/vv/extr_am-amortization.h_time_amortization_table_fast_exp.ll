; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-amortization.h_time_amortization_table_fast_exp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-amortization.h_time_amortization_table_fast_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, i32 }

@AMORTIZATION_TABLE_SQRT_SIZE = common dso_local global i32 0, align 4
@AMORTIZATION_TABLE_SQRT_SIZE_BITS = common dso_local global i32 0, align 4
@AMORTIZATION_TABLE_SQRT_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @time_amortization_table_fast_exp(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %7 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %8 = mul nsw i32 %6, %7
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE_BITS, align 4
  %16 = ashr i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %13, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %22, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %19, %28
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call double @exp(i32 %35)
  br label %37

37:                                               ; preds = %30, %10
  %38 = phi double [ %29, %10 ], [ %36, %30 ]
  ret double %38
}

declare dso_local double @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
