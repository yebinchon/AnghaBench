; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_mark_ancient_ads.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_mark_ancient_ads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32 }

@MAX_ADS = common dso_local global i32 0, align 4
@ADF_NEWANCIENT = common dso_local global i32 0, align 4
@ADF_ANCIENT = common dso_local global i32 0, align 4
@new_fresh_ads = common dso_local global i32 0, align 4
@new_stale_ads = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_ancient_ads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.advert*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %49, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAX_ADS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call %struct.advert* @get_ad(i32 %9)
  store %struct.advert* %10, %struct.advert** %3, align 8
  %11 = load %struct.advert*, %struct.advert** %3, align 8
  %12 = icmp ne %struct.advert* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load %struct.advert*, %struct.advert** %3, align 8
  %15 = call i64 @ad_became_ancient(%struct.advert* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* @ADF_NEWANCIENT, align 4
  %19 = load %struct.advert*, %struct.advert** %3, align 8
  %20 = getelementptr inbounds %struct.advert, %struct.advert* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %13
  %26 = load %struct.advert*, %struct.advert** %3, align 8
  %27 = getelementptr inbounds %struct.advert, %struct.advert* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADF_ANCIENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @new_fresh_ads, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @new_fresh_ads, align 4
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %17
  br label %48

40:                                               ; preds = %8
  %41 = load i32, i32* %1, align 4
  %42 = call i64 @ad_is_ancient(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %4

52:                                               ; preds = %4
  %53 = load i32, i32* %2, align 4
  store i32 %53, i32* @new_stale_ads, align 4
  ret void
}

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local i64 @ad_is_ancient(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
