; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_delayed_ad_activation.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_delayed_ad_activation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, %struct.advert* }

@delay_targeting = common dso_local global i64 0, align 8
@AD_TABLE_SIZE = common dso_local global i64 0, align 8
@Ads = common dso_local global %struct.advert** null, align 8
@ADF_DELAYED = common dso_local global i32 0, align 4
@ADF_ON = common dso_local global i32 0, align 4
@ADF_ANCIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_delayed_ad_activation() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.advert*, align 8
  store i32 0, i32* %2, align 4
  store i64 0, i64* @delay_targeting, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @AD_TABLE_SIZE, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = load %struct.advert**, %struct.advert*** @Ads, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.advert*, %struct.advert** %9, i64 %10
  %12 = load %struct.advert*, %struct.advert** %11, align 8
  store %struct.advert* %12, %struct.advert** %3, align 8
  br label %13

13:                                               ; preds = %46, %8
  %14 = load %struct.advert*, %struct.advert** %3, align 8
  %15 = icmp ne %struct.advert* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.advert*, %struct.advert** %3, align 8
  %18 = getelementptr inbounds %struct.advert, %struct.advert* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ADF_DELAYED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.advert*, %struct.advert** %3, align 8
  %25 = getelementptr inbounds %struct.advert, %struct.advert* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ADF_ON, align 4
  %28 = load i32, i32* @ADF_ANCIENT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @ADF_ON, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @ADF_DELAYED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.advert*, %struct.advert** %3, align 8
  %38 = getelementptr inbounds %struct.advert, %struct.advert* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.advert*, %struct.advert** %3, align 8
  %42 = call i32 @activate_ad(%struct.advert* %41)
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %23, %16
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.advert*, %struct.advert** %3, align 8
  %48 = getelementptr inbounds %struct.advert, %struct.advert* %47, i32 0, i32 1
  %49 = load %struct.advert*, %struct.advert** %48, align 8
  store %struct.advert* %49, %struct.advert** %3, align 8
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %1, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %1, align 8
  br label %4

54:                                               ; preds = %4
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @activate_ad(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
