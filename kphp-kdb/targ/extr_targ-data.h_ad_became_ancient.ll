; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.h_ad_became_ancient.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.h_ad_became_ancient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64 }

@ADF_ON = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i64 0, align 8
@AD_ANCIENT_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advert*)* @ad_became_ancient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_became_ancient(%struct.advert* %0) #0 {
  %2 = alloca %struct.advert*, align 8
  store %struct.advert* %0, %struct.advert** %2, align 8
  %3 = load %struct.advert*, %struct.advert** %2, align 8
  %4 = getelementptr inbounds %struct.advert, %struct.advert* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @ADF_ON, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.advert*, %struct.advert** %2, align 8
  %11 = getelementptr inbounds %struct.advert, %struct.advert* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @log_last_ts, align 8
  %14 = load i64, i64* @AD_ANCIENT_DELAY, align 8
  %15 = sub nsw i64 %13, %14
  %16 = icmp sle i64 %12, %15
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi i1 [ false, %1 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
