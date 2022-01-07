; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_ad_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_ad_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32, double, i32, %struct.advert* }

@MAX_ADS = common dso_local global i32 0, align 4
@max_ad_id = common dso_local global i32 0, align 4
@tot_ads = common dso_local global i32 0, align 4
@AncientAdBitmap = common dso_local global i32* null, align 8
@ADF_ANCIENT = common dso_local global i32 0, align 4
@ADF_NOTLOADED = common dso_local global i32 0, align 4
@ancient_ads_pending = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"created ad id %d\0A\00", align 1
@Ads = common dso_local global %struct.advert** null, align 8
@AD_TABLE_SIZE = common dso_local global i32 0, align 4
@tot_ad_versions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.advert* @get_ad_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.advert*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_ADS, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store %struct.advert* null, %struct.advert** %3, align 8
  br label %94

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.advert* @get_ad(i32 %15)
  store %struct.advert* %16, %struct.advert** %6, align 8
  %17 = load %struct.advert*, %struct.advert** %6, align 8
  %18 = icmp ne %struct.advert* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.advert*, %struct.advert** %6, align 8
  store %struct.advert* %23, %struct.advert** %3, align 8
  br label %94

24:                                               ; preds = %19
  %25 = call %struct.advert* @zmalloc(i32 32)
  store %struct.advert* %25, %struct.advert** %6, align 8
  %26 = load %struct.advert*, %struct.advert** %6, align 8
  %27 = icmp ne %struct.advert* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load %struct.advert*, %struct.advert** %6, align 8
  store %struct.advert* %29, %struct.advert** %3, align 8
  br label %94

30:                                               ; preds = %24
  %31 = load %struct.advert*, %struct.advert** %6, align 8
  %32 = call i32 @memset(%struct.advert* %31, i32 0, i32 32)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @max_ad_id, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* @max_ad_id, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* @tot_ads, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @tot_ads, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @ad_is_ancient(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 7
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** @AncientAdBitmap, align 8
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %48
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @ADF_ANCIENT, align 4
  %57 = load i32, i32* @ADF_NOTLOADED, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.advert*, %struct.advert** %6, align 8
  %60 = getelementptr inbounds %struct.advert, %struct.advert* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ancient_ads_pending, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @ancient_ads_pending, align 4
  br label %63

63:                                               ; preds = %44, %38
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.advert*, %struct.advert** %6, align 8
  %68 = getelementptr inbounds %struct.advert, %struct.advert* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.advert**, %struct.advert*** @Ads, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AD_TABLE_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.advert*, %struct.advert** %69, i64 %74
  %76 = load %struct.advert*, %struct.advert** %75, align 8
  %77 = load %struct.advert*, %struct.advert** %6, align 8
  %78 = getelementptr inbounds %struct.advert, %struct.advert* %77, i32 0, i32 4
  store %struct.advert* %76, %struct.advert** %78, align 8
  %79 = load %struct.advert*, %struct.advert** %6, align 8
  %80 = load %struct.advert**, %struct.advert*** @Ads, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AD_TABLE_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.advert*, %struct.advert** %80, i64 %85
  store %struct.advert* %79, %struct.advert** %86, align 8
  %87 = load %struct.advert*, %struct.advert** %6, align 8
  %88 = getelementptr inbounds %struct.advert, %struct.advert* %87, i32 0, i32 2
  store double 1.000000e+00, double* %88, align 8
  %89 = load %struct.advert*, %struct.advert** %6, align 8
  %90 = getelementptr inbounds %struct.advert, %struct.advert* %89, i32 0, i32 3
  store i32 65535, i32* %90, align 8
  %91 = load i32, i32* @tot_ad_versions, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @tot_ad_versions, align 4
  %93 = load %struct.advert*, %struct.advert** %6, align 8
  store %struct.advert* %93, %struct.advert** %3, align 8
  br label %94

94:                                               ; preds = %63, %28, %22, %13
  %95 = load %struct.advert*, %struct.advert** %3, align 8
  ret %struct.advert* %95
}

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local %struct.advert* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.advert*, i32, i32) #1

declare dso_local i64 @ad_is_ancient(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
