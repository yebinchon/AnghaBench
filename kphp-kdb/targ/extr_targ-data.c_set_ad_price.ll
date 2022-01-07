; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_price.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_ad_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_price = type { i64, i32 }
%struct.advert = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_price*)* @set_ad_price to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ad_price(%struct.lev_targ_ad_price* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_price*, align 8
  %4 = alloca %struct.advert*, align 8
  %5 = alloca i32, align 4
  store %struct.lev_targ_ad_price* %0, %struct.lev_targ_ad_price** %3, align 8
  %6 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %3, align 8
  %7 = getelementptr inbounds %struct.lev_targ_ad_price, %struct.lev_targ_ad_price* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %3, align 8
  %13 = getelementptr inbounds %struct.lev_targ_ad_price, %struct.lev_targ_ad_price* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %3, align 8
  %16 = getelementptr inbounds %struct.lev_targ_ad_price, %struct.lev_targ_ad_price* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ad_is_ancient(i32 %17)
  %19 = call %struct.advert* @get_ad_f(i32 %14, i32 %18)
  store %struct.advert* %19, %struct.advert** %4, align 8
  %20 = load %struct.advert*, %struct.advert** %4, align 8
  %21 = icmp ne %struct.advert* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %11
  %24 = load %struct.advert*, %struct.advert** %4, align 8
  %25 = call i32 @load_ancient_ad(%struct.advert* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %23
  %31 = load %struct.lev_targ_ad_price*, %struct.lev_targ_ad_price** %3, align 8
  %32 = getelementptr inbounds %struct.lev_targ_ad_price, %struct.lev_targ_ad_price* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.advert*, %struct.advert** %4, align 8
  %35 = getelementptr inbounds %struct.advert, %struct.advert* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.advert*, %struct.advert** %4, align 8
  %37 = call i32 @compute_estimated_gain(%struct.advert* %36)
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %28, %22, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
