; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_limit_user_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_limit_user_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32 }
%struct.advert = type { i64, i32 }

@ADF_LIMIT_VIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_generic*)* @ad_limit_user_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_limit_user_views(%struct.lev_generic* %0) #0 {
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
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 100
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ true, %1 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ad_is_ancient(i32 %24)
  %26 = call %struct.advert* @get_ad_f(i32 %23, i32 %25)
  store %struct.advert* %26, %struct.advert** %6, align 8
  %27 = load %struct.advert*, %struct.advert** %6, align 8
  %28 = icmp ne %struct.advert* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %58

30:                                               ; preds = %19
  %31 = load %struct.advert*, %struct.advert** %6, align 8
  %32 = call i64 @load_ancient_ad(%struct.advert* %31)
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.advert*, %struct.advert** %6, align 8
  %37 = getelementptr inbounds %struct.advert, %struct.advert* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @ADF_LIMIT_VIEWS, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.advert*, %struct.advert** %6, align 8
  %48 = getelementptr inbounds %struct.advert, %struct.advert* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %57

51:                                               ; preds = %30
  %52 = load i32, i32* @ADF_LIMIT_VIEWS, align 4
  %53 = load %struct.advert*, %struct.advert** %6, align 8
  %54 = getelementptr inbounds %struct.advert, %struct.advert* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %44
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* %2, align 4
  ret i32 %59
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
