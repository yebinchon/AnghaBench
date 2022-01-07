; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_decay.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_decay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double }

@QRT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M_LN2 = common dso_local global double 0.000000e+00, align 8
@now = common dso_local global i64 0, align 8
@QRT_min_creation_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_decay(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @QRT, i32 0, i32 0), align 8
  %6 = load double, double* @M_LN2, align 8
  %7 = load double, double* %4, align 8
  %8 = fdiv double %6, %7
  %9 = fneg double %8
  store double %9, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @QRT, i32 0, i32 1), align 8
  %10 = load i64, i64* @now, align 8
  %11 = sitofp i64 %10 to double
  %12 = load double, double* %4, align 8
  %13 = fmul double %12, 4.000000e+01
  %14 = fsub double %11, %13
  %15 = fptosi double %14 to i64
  store i64 %15, i64* @QRT_min_creation_time, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
