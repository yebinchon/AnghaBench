; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_domain.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setint = type { i64, i32 }
%struct.advert = type { i64 }

@MAX_AD_DOMAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setint*)* @ad_set_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_set_domain(%struct.lev_targ_ad_setint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setint*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setint* %0, %struct.lev_targ_ad_setint** %3, align 8
  %5 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %6 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %11 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_AD_DOMAIN, align 8
  %14 = icmp sle i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %20 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %23 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ad_is_ancient(i32 %24)
  %26 = call %struct.advert* @get_ad_f(i32 %21, i32 %25)
  store %struct.advert* %26, %struct.advert** %4, align 8
  %27 = load %struct.advert*, %struct.advert** %4, align 8
  %28 = icmp ne %struct.advert* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %41

30:                                               ; preds = %15
  %31 = load %struct.advert*, %struct.advert** %4, align 8
  %32 = call i64 @load_ancient_ad(%struct.advert* %31)
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %37 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.advert*, %struct.advert** %4, align 8
  %40 = getelementptr inbounds %struct.advert, %struct.advert* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %30, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i64 @load_ancient_ad(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
