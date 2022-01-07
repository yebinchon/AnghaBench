; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setint = type { i32, i32 }
%struct.advert = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setint*)* @ad_set_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_set_group(%struct.lev_targ_ad_setint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setint*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setint* %0, %struct.lev_targ_ad_setint** %3, align 8
  %5 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %6 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, -2147483648
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %12 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %15 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ad_is_ancient(i32 %16)
  %18 = call %struct.advert* @get_ad_f(i32 %13, i32 %17)
  store %struct.advert* %18, %struct.advert** %4, align 8
  %19 = load %struct.advert*, %struct.advert** %4, align 8
  %20 = icmp ne %struct.advert* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.advert*, %struct.advert** %4, align 8
  %24 = call i64 @load_ancient_ad(%struct.advert* %23)
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %29 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.advert*, %struct.advert** %4, align 8
  %32 = getelementptr inbounds %struct.advert, %struct.advert* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %22, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
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
