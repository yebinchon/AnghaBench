; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_estimated_gain_clicks.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_estimated_gain_clicks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32, i64 }

@INIT_L_VIEWS = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@INIT_L_CLICKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.advert*, i64, i64)* @compute_estimated_gain_clicks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_estimated_gain_clicks(%struct.advert* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.advert*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.advert* %0, %struct.advert** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @INIT_L_VIEWS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.advert*, %struct.advert** %4, align 8
  %10 = getelementptr inbounds %struct.advert, %struct.advert* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.advert*, %struct.advert** %4, align 8
  %15 = getelementptr inbounds %struct.advert, %struct.advert* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @compute_projected_views(i32 %16)
  store i32 %17, i32* %7, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.advert*, %struct.advert** %4, align 8
  %20 = getelementptr inbounds %struct.advert, %struct.advert* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.advert*, %struct.advert** %4, align 8
  %25 = getelementptr inbounds %struct.advert, %struct.advert* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @log_split_mod, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @compute_projected_views(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %18
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.advert*, %struct.advert** %4, align 8
  %33 = getelementptr inbounds %struct.advert, %struct.advert* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = load i64, i64* %5, align 8
  %37 = sitofp i64 %36 to double
  %38 = fmul double %37, 1.000000e-01
  %39 = load i64, i64* @INIT_L_CLICKS, align 8
  %40 = sitofp i64 %39 to double
  %41 = fadd double %38, %40
  %42 = fmul double %35, %41
  %43 = load i64, i64* %6, align 8
  %44 = sitofp i64 %43 to double
  %45 = fmul double %44, 1.000000e-01
  %46 = load i32, i32* %7, align 4
  %47 = sitofp i32 %46 to double
  %48 = fadd double %45, %47
  %49 = fdiv double %42, %48
  ret double %49
}

declare dso_local i32 @compute_projected_views(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
