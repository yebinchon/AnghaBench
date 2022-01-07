; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-mmc-phase.c_rockchip_mmc_clk_rate_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-mmc-phase.c_rockchip_mmc_clk_rate_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.rockchip_mmc_clock = type { i32, i32 }
%struct.clk_notifier_data = type { i64, i64 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@PRE_RATE_CHANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@POST_RATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rockchip_mmc_clk_rate_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mmc_clk_rate_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rockchip_mmc_clock*, align 8
  %9 = alloca %struct.clk_notifier_data*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %11 = call %struct.rockchip_mmc_clock* @to_rockchip_mmc_clock(%struct.notifier_block* %10)
  store %struct.rockchip_mmc_clock* %11, %struct.rockchip_mmc_clock** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.clk_notifier_data*
  store %struct.clk_notifier_data* %13, %struct.clk_notifier_data** %9, align 8
  %14 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %9, align 8
  %15 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %9, align 8
  %18 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @PRE_RATE_CHANGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %8, align 8
  %29 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %28, i32 0, i32 1
  %30 = call i32 @rockchip_mmc_get_phase(i32* %29)
  %31 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %8, align 8
  %32 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %52

33:                                               ; preds = %23
  %34 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %8, align 8
  %35 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @POST_RATE_CHANGE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %8, align 8
  %46 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %45, i32 0, i32 1
  %47 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %8, align 8
  %48 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rockchip_mmc_set_phase(i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %40, %33
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.rockchip_mmc_clock* @to_rockchip_mmc_clock(%struct.notifier_block*) #1

declare dso_local i32 @rockchip_mmc_get_phase(i32*) #1

declare dso_local i32 @rockchip_mmc_set_phase(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
