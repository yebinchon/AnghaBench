; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_aud.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_aud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setaud = type { i64, i32 }
%struct.advert = type { i32, i64, i64 }

@targeting_disabled = common dso_local global i64 0, align 8
@ADF_ANCIENT = common dso_local global i32 0, align 4
@MAX_AD_AUD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setaud*)* @set_ad_aud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ad_aud(%struct.lev_targ_ad_setaud* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setaud*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setaud* %0, %struct.lev_targ_ad_setaud** %3, align 8
  %5 = load i64, i64* @targeting_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

8:                                                ; preds = %1
  %9 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %3, align 8
  %10 = getelementptr inbounds %struct.lev_targ_ad_setaud, %struct.lev_targ_ad_setaud* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.advert* @get_ad_f(i32 %11, i32 0)
  store %struct.advert* %12, %struct.advert** %4, align 8
  %13 = load %struct.advert*, %struct.advert** %4, align 8
  %14 = icmp ne %struct.advert* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load %struct.advert*, %struct.advert** %4, align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ADF_ANCIENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %3, align 8
  %24 = getelementptr inbounds %struct.lev_targ_ad_setaud, %struct.lev_targ_ad_setaud* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %3, align 8
  %29 = getelementptr inbounds %struct.lev_targ_ad_setaud, %struct.lev_targ_ad_setaud* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_AD_AUD, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.advert*, %struct.advert** %4, align 8
  %35 = getelementptr inbounds %struct.advert, %struct.advert* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %33, %27, %22, %15, %8
  %39 = phi i1 [ false, %27 ], [ false, %22 ], [ false, %15 ], [ false, %8 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.lev_targ_ad_setaud*, %struct.lev_targ_ad_setaud** %3, align 8
  %43 = getelementptr inbounds %struct.lev_targ_ad_setaud, %struct.lev_targ_ad_setaud* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.advert*, %struct.advert** %4, align 8
  %46 = getelementptr inbounds %struct.advert, %struct.advert* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.advert*, %struct.advert** %4, align 8
  %48 = call i32 @compute_estimated_gain(%struct.advert* %47)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %38, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
