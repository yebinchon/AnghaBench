; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_change_sites.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_change_sites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.advert = type { i32 }

@LEV_TARG_AD_SETSITEMASK = common dso_local global i32 0, align 4
@ADF_SITES_MASK = common dso_local global i32 0, align 4
@ADF_SITES_MASK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_generic*)* @ad_change_sites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_change_sites(%struct.lev_generic* %0) #0 {
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
  %13 = and i32 %12, -256
  %14 = load i32, i32* @LEV_TARG_AD_SETSITEMASK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %18 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.lev_generic*, %struct.lev_generic** %3, align 8
  %23 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %20, %16 ], [ %25, %21 ]
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ad_is_ancient(i32 %29)
  %31 = call %struct.advert* @get_ad_f(i32 %28, i32 %30)
  store %struct.advert* %31, %struct.advert** %6, align 8
  %32 = load %struct.advert*, %struct.advert** %6, align 8
  %33 = icmp ne %struct.advert* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %53

35:                                               ; preds = %26
  %36 = load %struct.advert*, %struct.advert** %6, align 8
  %37 = call i64 @load_ancient_ad(%struct.advert* %36)
  %38 = icmp sge i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.advert*, %struct.advert** %6, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ADF_SITES_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load %struct.advert*, %struct.advert** %6, align 8
  %52 = getelementptr inbounds %struct.advert, %struct.advert* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %35, %34
  %54 = load i32, i32* %2, align 4
  ret i32 %54
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
