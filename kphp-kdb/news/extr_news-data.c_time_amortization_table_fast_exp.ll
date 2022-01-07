; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_time_amortization_table_fast_exp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_time_amortization_table_fast_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double*, double*, i32 }

@AMORTIZATION_TABLE_SQRT_SIZE = common dso_local global i32 0, align 4
@TAT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AMORTIZATION_TABLE_SQRT_SIZE_BITS = common dso_local global i32 0, align 4
@AMORTIZATION_TABLE_SQRT_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @time_amortization_table_fast_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @time_amortization_table_fast_exp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %5 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %6 = mul nsw i32 %4, %5
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 0), align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE_BITS, align 4
  %12 = ashr i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %9, i64 %13
  %15 = load double, double* %14, align 8
  %16 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 1), align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %16, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %15, %22
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 2), align 8
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call double @exp(i32 %27)
  br label %29

29:                                               ; preds = %24, %8
  %30 = phi double [ %23, %8 ], [ %28, %24 ]
  ret double %30
}

declare dso_local double @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
