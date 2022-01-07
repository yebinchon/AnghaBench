; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_limit_recent_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_limit_recent_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.advert = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_generic*)* @ad_limit_recent_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_limit_recent_views(%struct.lev_generic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_generic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %3, align 8
  %7 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %8 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %11 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 65535
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ad_is_ancient(i32 %15)
  %17 = call %struct.advert* @get_ad_f(i32 %14, i32 %16)
  store %struct.advert* %17, %struct.advert** %6, align 8
  %18 = load %struct.advert*, %struct.advert** %6, align 8
  %19 = icmp ne %struct.advert* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.advert*, %struct.advert** %6, align 8
  %23 = call i64 @load_ancient_ad(%struct.advert* %22)
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.advert*, %struct.advert** %6, align 8
  %29 = getelementptr inbounds %struct.advert, %struct.advert* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @load_ancient_ad(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
