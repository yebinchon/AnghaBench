; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_estimated_gain.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_estimated_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { double, i32, i32, double, double, double, double, double }

@INIT_L_VIEWS = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@INIT_L_CLICKS = common dso_local global double 0.000000e+00, align 8
@VIEW_GAIN_MULTIPLIER = common dso_local global double 0.000000e+00, align 8
@MONEY_SCALE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @compute_estimated_gain(%struct.advert* %0) #0 {
  %2 = alloca %struct.advert*, align 8
  %3 = alloca i32, align 4
  store %struct.advert* %0, %struct.advert** %2, align 8
  %4 = load %struct.advert*, %struct.advert** %2, align 8
  %5 = call i32 @compute_ad_lambda(%struct.advert* %4)
  %6 = load %struct.advert*, %struct.advert** %2, align 8
  %7 = getelementptr inbounds %struct.advert, %struct.advert* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fcmp ogt double %8, 0.000000e+00
  br i1 %9, label %10, label %63

10:                                               ; preds = %1
  %11 = load i32, i32* @INIT_L_VIEWS, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.advert*, %struct.advert** %2, align 8
  %13 = getelementptr inbounds %struct.advert, %struct.advert* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.advert*, %struct.advert** %2, align 8
  %18 = getelementptr inbounds %struct.advert, %struct.advert* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @compute_projected_views(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %10
  %22 = load %struct.advert*, %struct.advert** %2, align 8
  %23 = getelementptr inbounds %struct.advert, %struct.advert* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.advert*, %struct.advert** %2, align 8
  %28 = getelementptr inbounds %struct.advert, %struct.advert* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @log_split_mod, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @compute_projected_views(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %21
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.advert*, %struct.advert** %2, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.advert*, %struct.advert** %2, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 4
  %40 = load double, double* %39, align 8
  %41 = load %struct.advert*, %struct.advert** %2, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 5
  %43 = load double, double* %42, align 8
  %44 = fmul double %43, 1.000000e-01
  %45 = fadd double %40, %44
  %46 = load double, double* @INIT_L_CLICKS, align 8
  %47 = fadd double %45, %46
  %48 = fmul double %37, %47
  %49 = load %struct.advert*, %struct.advert** %2, align 8
  %50 = getelementptr inbounds %struct.advert, %struct.advert* %49, i32 0, i32 6
  %51 = load double, double* %50, align 8
  %52 = load %struct.advert*, %struct.advert** %2, align 8
  %53 = getelementptr inbounds %struct.advert, %struct.advert* %52, i32 0, i32 7
  %54 = load double, double* %53, align 8
  %55 = fmul double %54, 1.000000e-01
  %56 = fadd double %51, %55
  %57 = load i32, i32* %3, align 4
  %58 = sitofp i32 %57 to double
  %59 = fadd double %56, %58
  %60 = fdiv double %48, %59
  %61 = load %struct.advert*, %struct.advert** %2, align 8
  %62 = getelementptr inbounds %struct.advert, %struct.advert* %61, i32 0, i32 3
  store double %60, double* %62, align 8
  br label %74

63:                                               ; preds = %1
  %64 = load %struct.advert*, %struct.advert** %2, align 8
  %65 = getelementptr inbounds %struct.advert, %struct.advert* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fmul double -1.000000e+00, %66
  %68 = load double, double* @VIEW_GAIN_MULTIPLIER, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* @MONEY_SCALE, align 8
  %71 = fdiv double %69, %70
  %72 = load %struct.advert*, %struct.advert** %2, align 8
  %73 = getelementptr inbounds %struct.advert, %struct.advert* %72, i32 0, i32 3
  store double %71, double* %73, align 8
  br label %74

74:                                               ; preds = %63, %34
  %75 = load %struct.advert*, %struct.advert** %2, align 8
  %76 = getelementptr inbounds %struct.advert, %struct.advert* %75, i32 0, i32 3
  %77 = load double, double* %76, align 8
  ret double %77
}

declare dso_local i32 @compute_ad_lambda(%struct.advert*) #1

declare dso_local i32 @compute_projected_views(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
