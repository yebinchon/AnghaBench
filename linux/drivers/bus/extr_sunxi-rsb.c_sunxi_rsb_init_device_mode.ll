; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_init_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_init_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb = type { i64 }

@RSB_DMCR_DEVICE_START = common dso_local global i32 0, align 4
@RSB_DMCR_MODE_DATA = common dso_local global i32 0, align 4
@RSB_DMCR_MODE_REG = common dso_local global i32 0, align 4
@RSB_DMCR_DEV_ADDR = common dso_local global i32 0, align 4
@RSB_DMCR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@RSB_INTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb*)* @sunxi_rsb_init_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rsb_init_device_mode(%struct.sunxi_rsb* %0) #0 {
  %2 = alloca %struct.sunxi_rsb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sunxi_rsb* %0, %struct.sunxi_rsb** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @RSB_DMCR_DEVICE_START, align 4
  %6 = load i32, i32* @RSB_DMCR_MODE_DATA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RSB_DMCR_MODE_REG, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RSB_DMCR_DEV_ADDR, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %2, align 8
  %13 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RSB_DMCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %2, align 8
  %19 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RSB_DMCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RSB_DMCR_DEVICE_START, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @readl_poll_timeout(i64 %22, i32 %23, i32 %29, i32 100, i32 250000)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RSB_DMCR_DEVICE_START, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %2, align 8
  %40 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RSB_INTS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %2, align 8
  %46 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RSB_INTS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
