; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_adjust_ctr_counters.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_adjust_ctr_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32, i64, i64 }

@ADJ_VIEW_THRESHOLD = common dso_local global i32 0, align 4
@INIT_L_CTR = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advert*)* @adjust_ctr_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_ctr_counters(%struct.advert* %0) #0 {
  %2 = alloca %struct.advert*, align 8
  %3 = alloca i32, align 4
  store %struct.advert* %0, %struct.advert** %2, align 8
  %4 = load %struct.advert*, %struct.advert** %2, align 8
  %5 = getelementptr inbounds %struct.advert, %struct.advert* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ADJ_VIEW_THRESHOLD, align 4
  %8 = mul nsw i32 2, %7
  %9 = icmp sge i32 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.advert*, %struct.advert** %2, align 8
  %12 = getelementptr inbounds %struct.advert, %struct.advert* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sitofp i32 %13 to double
  %15 = load %struct.advert*, %struct.advert** %2, align 8
  %16 = getelementptr inbounds %struct.advert, %struct.advert* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %14, %18
  %20 = load double, double* @INIT_L_CTR, align 8
  %21 = fmul double 1.500000e+00, %20
  %22 = fcmp ogt double %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %10
  %24 = load %struct.advert*, %struct.advert** %2, align 8
  %25 = getelementptr inbounds %struct.advert, %struct.advert* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ADJ_VIEW_THRESHOLD, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.advert*, %struct.advert** %2, align 8
  %31 = getelementptr inbounds %struct.advert, %struct.advert* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.advert*, %struct.advert** %2, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %23, %10, %1
  %40 = load %struct.advert*, %struct.advert** %2, align 8
  %41 = getelementptr inbounds %struct.advert, %struct.advert* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.advert*, %struct.advert** %2, align 8
  %43 = getelementptr inbounds %struct.advert, %struct.advert* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
