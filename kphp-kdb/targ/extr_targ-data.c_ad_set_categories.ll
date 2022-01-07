; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_categories.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_set_categories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_ad_setint = type { i32, i32 }
%struct.advert = type { i16, i16 }

@MAX_AD_CATEGORY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_ad_setint*)* @ad_set_categories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_set_categories(%struct.lev_targ_ad_setint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_ad_setint*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca %struct.advert*, align 8
  store %struct.lev_targ_ad_setint* %0, %struct.lev_targ_ad_setint** %3, align 8
  %7 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %8 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65535
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %4, align 2
  %12 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %13 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 16
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %5, align 2
  %17 = load i16, i16* %4, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i16, i16* %4, align 2
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* @MAX_AD_CATEGORY, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i16, i16* %5, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i16, i16* %5, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* @MAX_AD_CATEGORY, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sle i32 %32, %34
  br label %36

36:                                               ; preds = %30, %26, %20, %1
  %37 = phi i1 [ false, %26 ], [ false, %20 ], [ false, %1 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %41 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %3, align 8
  %44 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ad_is_ancient(i32 %45)
  %47 = call %struct.advert* @get_ad_f(i32 %42, i32 %46)
  store %struct.advert* %47, %struct.advert** %6, align 8
  %48 = load %struct.advert*, %struct.advert** %6, align 8
  %49 = icmp ne %struct.advert* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %63

51:                                               ; preds = %36
  %52 = load %struct.advert*, %struct.advert** %6, align 8
  %53 = call i64 @load_ancient_ad(%struct.advert* %52)
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i16, i16* %4, align 2
  %58 = load %struct.advert*, %struct.advert** %6, align 8
  %59 = getelementptr inbounds %struct.advert, %struct.advert* %58, i32 0, i32 0
  store i16 %57, i16* %59, align 2
  %60 = load i16, i16* %5, align 2
  %61 = load %struct.advert*, %struct.advert** %6, align 8
  %62 = getelementptr inbounds %struct.advert, %struct.advert* %61, i32 0, i32 1
  store i16 %60, i16* %62, align 2
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %50
  %64 = load i32, i32* %2, align 4
  ret i32 %64
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
