; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_ctr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64, i32 }
%struct.lev_targ_ad_setctr_pack = type { i64 }
%struct.lev_targ_ad_setctr = type { i64, i64 }
%struct.lev_generic = type { i32 }

@ADF_ANCIENT = common dso_local global i32 0, align 4
@MAX_G_CLICKS = common dso_local global i64 0, align 8
@ESTIMATED_GAIN_EPS = common dso_local global i32 0, align 4
@LEV_TARG_AD_SETCTR_PACK = common dso_local global i64 0, align 8
@LEV_TARG_AD_SETCTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_ad_ctr(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.advert*, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.lev_targ_ad_setctr_pack*, align 8
  %11 = alloca %struct.lev_targ_ad_setctr*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.advert* @get_ad_f(i32 %12, i32 0)
  store %struct.advert* %13, %struct.advert** %8, align 8
  %14 = load %struct.advert*, %struct.advert** %8, align 8
  %15 = icmp ne %struct.advert* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load %struct.advert*, %struct.advert** %8, align 8
  %18 = getelementptr inbounds %struct.advert, %struct.advert* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ADF_ANCIENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = load %struct.advert*, %struct.advert** %8, align 8
  %25 = call i64 @ad_became_ancient(%struct.advert* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @MAX_G_CLICKS, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30, %27, %23, %16, %3
  store i32 0, i32* %4, align 4
  br label %102

38:                                               ; preds = %33
  %39 = load %struct.advert*, %struct.advert** %8, align 8
  %40 = getelementptr inbounds %struct.advert, %struct.advert* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %102

44:                                               ; preds = %38
  %45 = load %struct.advert*, %struct.advert** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call double @compute_estimated_gain_clicks(%struct.advert* %45, i64 %46, i64 %47)
  store double %48, double* %9, align 8
  %49 = load double, double* %9, align 8
  %50 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %51 = sub nsw i32 1, %50
  %52 = load %struct.advert*, %struct.advert** %8, align 8
  %53 = getelementptr inbounds %struct.advert, %struct.advert* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = sitofp i32 %55 to double
  %57 = fcmp oge double %49, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load double, double* %9, align 8
  %60 = load i32, i32* @ESTIMATED_GAIN_EPS, align 4
  %61 = add nsw i32 1, %60
  %62 = load %struct.advert*, %struct.advert** %8, align 8
  %63 = getelementptr inbounds %struct.advert, %struct.advert* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = sitofp i32 %65 to double
  %67 = fcmp ole double %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %102

69:                                               ; preds = %58, %44
  %70 = load i64, i64* %6, align 8
  %71 = icmp slt i64 %70, 256
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = icmp sle i64 %73, 2147483647
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i64, i64* @LEV_TARG_AD_SETCTR_PACK, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @alloc_log_event(i64 %78, i32 12, i32 %79)
  %81 = inttoptr i64 %80 to %struct.lev_targ_ad_setctr_pack*
  store %struct.lev_targ_ad_setctr_pack* %81, %struct.lev_targ_ad_setctr_pack** %10, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.lev_targ_ad_setctr_pack*, %struct.lev_targ_ad_setctr_pack** %10, align 8
  %84 = getelementptr inbounds %struct.lev_targ_ad_setctr_pack, %struct.lev_targ_ad_setctr_pack* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.lev_targ_ad_setctr_pack*, %struct.lev_targ_ad_setctr_pack** %10, align 8
  %86 = bitcast %struct.lev_targ_ad_setctr_pack* %85 to %struct.lev_generic*
  %87 = call i32 @set_ad_ctr(%struct.lev_generic* %86)
  store i32 %87, i32* %4, align 4
  br label %102

88:                                               ; preds = %72, %69
  %89 = load i64, i64* @LEV_TARG_AD_SETCTR, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @alloc_log_event(i64 %89, i32 20, i32 %90)
  %92 = inttoptr i64 %91 to %struct.lev_targ_ad_setctr*
  store %struct.lev_targ_ad_setctr* %92, %struct.lev_targ_ad_setctr** %11, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.lev_targ_ad_setctr*, %struct.lev_targ_ad_setctr** %11, align 8
  %95 = getelementptr inbounds %struct.lev_targ_ad_setctr, %struct.lev_targ_ad_setctr* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.lev_targ_ad_setctr*, %struct.lev_targ_ad_setctr** %11, align 8
  %98 = getelementptr inbounds %struct.lev_targ_ad_setctr, %struct.lev_targ_ad_setctr* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.lev_targ_ad_setctr*, %struct.lev_targ_ad_setctr** %11, align 8
  %100 = bitcast %struct.lev_targ_ad_setctr* %99 to %struct.lev_generic*
  %101 = call i32 @set_ad_ctr(%struct.lev_generic* %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %88, %75, %68, %43, %37
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local double @compute_estimated_gain_clicks(%struct.advert*, i64, i64) #1

declare dso_local i64 @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_ad_ctr(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
