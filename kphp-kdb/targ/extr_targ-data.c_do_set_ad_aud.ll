; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_aud.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_ad_aud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64, i32 }
%struct.lev_targ_ad_setaud = type { i32 }

@ADF_ANCIENT = common dso_local global i32 0, align 4
@MAX_AD_AUD = common dso_local global i32 0, align 4
@LEV_TARG_AD_SETAUD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_ad_aud(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca %struct.lev_targ_ad_setaud*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.advert* @get_ad_f(i32 %8, i32 0)
  store %struct.advert* %9, %struct.advert** %6, align 8
  %10 = load %struct.advert*, %struct.advert** %6, align 8
  %11 = icmp ne %struct.advert* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.advert*, %struct.advert** %6, align 8
  %14 = getelementptr inbounds %struct.advert, %struct.advert* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ADF_ANCIENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = load %struct.advert*, %struct.advert** %6, align 8
  %21 = call i64 @ad_became_ancient(%struct.advert* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAX_AD_AUD, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %19, %12, %2
  store i32 0, i32* %3, align 4
  br label %53

31:                                               ; preds = %26
  %32 = load %struct.advert*, %struct.advert** %6, align 8
  %33 = getelementptr inbounds %struct.advert, %struct.advert* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.advert*, %struct.advert** %6, align 8
  %38 = getelementptr inbounds %struct.advert, %struct.advert* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31
  store i32 1, i32* %3, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load i32, i32* @LEV_TARG_AD_SETAUD, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @alloc_log_event(i32 %44, i32 12, i32 %45)
  %47 = inttoptr i64 %46 to %struct.lev_targ_ad_setaud*
  store %struct.lev_targ_ad_setaud* %47, %struct.lev_targ_ad_setaud** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %7, align 8
  %50 = getelementptr inbounds %struct.lev_targ_ad_setaud, %struct.lev_targ_ad_setaud* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %7, align 8
  %52 = call i32 @set_ad_aud(%struct.lev_targ_ad_setaud* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %42, %30
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local i64 @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_ad_aud(%struct.lev_targ_ad_setaud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
