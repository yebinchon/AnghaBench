; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_start.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i64 }
%struct.ag71xx_platform_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_phy_start(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %4 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %5 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %4)
  store %struct.ag71xx_platform_data* %5, %struct.ag71xx_platform_data** %3, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @phy_start(i64 %13)
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %17 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = call i32 @ag71xx_ar7240_start(%struct.ag71xx* %26)
  br label %33

28:                                               ; preds = %20, %15
  %29 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %30 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %32 = call i32 @ag71xx_link_adjust(%struct.ag71xx* %31)
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33, %10
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @ag71xx_ar7240_start(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_link_adjust(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
