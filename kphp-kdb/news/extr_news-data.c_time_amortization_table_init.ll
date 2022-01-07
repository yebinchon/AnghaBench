; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_time_amortization_table_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_time_amortization_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, double*, double* }

@TAT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M_LN2 = common dso_local global i32 0, align 4
@AMORTIZATION_TABLE_SQRT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @time_amortization_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_amortization_table_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 0), align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load i32, i32* @M_LN2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %11, %12
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 1), align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 1), align 4
  %17 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call double @exp(i32 %18)
  store double %19, double* %4, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 1), align 4
  %21 = call double @exp(i32 %20)
  store double %21, double* %5, align 8
  %22 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 3), align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  store double 1.000000e+00, double* %23, align 8
  %24 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 2), align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  store double 1.000000e+00, double* %25, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %55, %10
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @AMORTIZATION_TABLE_SQRT_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 2), align 8
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %31, i64 %34
  %36 = load double, double* %35, align 8
  %37 = load double, double* %4, align 8
  %38 = fmul double %36, %37
  %39 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 2), align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double %38, double* %42, align 8
  %43 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 3), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double, double* %5, align 8
  %50 = fmul double %48, %49
  %51 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TAT, i32 0, i32 3), align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  store double %50, double* %54, align 8
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %26

58:                                               ; preds = %9, %26
  ret void
}

declare dso_local double @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
