; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.h_get_ad.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.h_get_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, %struct.advert* }

@Ads = common dso_local global %struct.advert** null, align 8
@AD_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.advert* (i32)* @get_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.advert* @get_ad(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.advert*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.advert**, %struct.advert*** @Ads, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @AD_TABLE_SIZE, align 4
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.advert*, %struct.advert** %4, i64 %9
  %11 = load %struct.advert*, %struct.advert** %10, align 8
  store %struct.advert* %11, %struct.advert** %3, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load %struct.advert*, %struct.advert** %3, align 8
  %14 = icmp ne %struct.advert* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.advert*, %struct.advert** %3, align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.advert*, %struct.advert** %3, align 8
  %26 = getelementptr inbounds %struct.advert, %struct.advert* %25, i32 0, i32 1
  %27 = load %struct.advert*, %struct.advert** %26, align 8
  store %struct.advert* %27, %struct.advert** %3, align 8
  br label %12

28:                                               ; preds = %21
  %29 = load %struct.advert*, %struct.advert** %3, align 8
  ret %struct.advert* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
