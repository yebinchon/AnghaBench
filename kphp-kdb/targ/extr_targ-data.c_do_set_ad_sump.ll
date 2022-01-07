; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_sump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_sump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64, i32, i32 }
%struct.lev_targ_ad_setsump = type { i64, i64, i64 }

@ADF_ANCIENT = common dso_local global i32 0, align 4
@ESTIMATED_GAIN_EPS = common dso_local global i32 0, align 4
@LEV_TARG_AD_SETSUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_ad_sump(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.advert*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.lev_targ_ad_setsump*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.advert* @get_ad_f(i32 %15, i32 0)
  store %struct.advert* %16, %struct.advert** %10, align 8
  %17 = load %struct.advert*, %struct.advert** %10, align 8
  %18 = icmp ne %struct.advert* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load %struct.advert*, %struct.advert** %10, align 8
  %21 = getelementptr inbounds %struct.advert, %struct.advert* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ADF_ANCIENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load %struct.advert*, %struct.advert** %10, align 8
  %28 = call i64 @ad_became_ancient(%struct.advert* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %26, %19, %4
  store i32 0, i32* %5, align 4
  br label %122

40:                                               ; preds = %36
  %41 = load %struct.advert*, %struct.advert** %10, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %122

46:                                               ; preds = %40
  store double 0x3DF0000000000000, double* %11, align 8
  %47 = load %struct.advert*, %struct.advert** %10, align 8
  %48 = getelementptr inbounds %struct.advert, %struct.advert* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sitofp i64 %50 to double
  %52 = load double, double* %11, align 8
  %53 = fmul double %51, %52
  %54 = fptosi double %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = sitofp i64 %55 to double
  %57 = load double, double* %11, align 8
  %58 = fmul double %56, %57
  %59 = fptosi double %58 to i64
  %60 = load i64, i64* %9, align 8
  %61 = sitofp i64 %60 to double
  %62 = load double, double* %11, align 8
  %63 = fmul double %61, %62
  %64 = fptosi double %63 to i64
  %65 = call double @compute_ad_lambda_delta(i64 %49, i64 %54, i64 %59, i64 %64, double* %12)
  store double %65, double* %13, align 8
  %66 = load double, double* %12, align 8
  %67 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %68 = sub nsw i32 1, %67
  %69 = load %struct.advert*, %struct.advert** %10, align 8
  %70 = getelementptr inbounds %struct.advert, %struct.advert* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = sitofp i32 %72 to double
  %74 = fcmp oge double %66, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %46
  %76 = load double, double* %12, align 8
  %77 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %78 = add nsw i32 1, %77
  %79 = load %struct.advert*, %struct.advert** %10, align 8
  %80 = getelementptr inbounds %struct.advert, %struct.advert* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = sitofp i32 %82 to double
  %84 = fcmp ole double %76, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %75
  %86 = load double, double* %13, align 8
  %87 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %88 = sub nsw i32 1, %87
  %89 = load %struct.advert*, %struct.advert** %10, align 8
  %90 = getelementptr inbounds %struct.advert, %struct.advert* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = sitofp i32 %92 to double
  %94 = fcmp oge double %86, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load double, double* %13, align 8
  %97 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %98 = add nsw i32 1, %97
  %99 = load %struct.advert*, %struct.advert** %10, align 8
  %100 = getelementptr inbounds %struct.advert, %struct.advert* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sitofp i32 %102 to double
  %104 = fcmp ole double %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %122

106:                                              ; preds = %95, %85, %75, %46
  %107 = load i32, i32* @LEV_TARG_AD_SETSUMP, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @alloc_log_event(i32 %107, i32 32, i32 %108)
  %110 = inttoptr i64 %109 to %struct.lev_targ_ad_setsump*
  store %struct.lev_targ_ad_setsump* %110, %struct.lev_targ_ad_setsump** %14, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %14, align 8
  %113 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %14, align 8
  %116 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %14, align 8
  %119 = getelementptr inbounds %struct.lev_targ_ad_setsump, %struct.lev_targ_ad_setsump* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.lev_targ_ad_setsump*, %struct.lev_targ_ad_setsump** %14, align 8
  %121 = call i32 @set_ad_sump(%struct.lev_targ_ad_setsump* %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %106, %105, %45, %39
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local double @compute_ad_lambda_delta(i64, i64, i64, i64, double*) #1

declare dso_local i64 @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_ad_sump(%struct.lev_targ_ad_setsump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
