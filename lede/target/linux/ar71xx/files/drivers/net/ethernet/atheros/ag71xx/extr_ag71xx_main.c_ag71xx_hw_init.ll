; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }
%struct.ag71xx_platform_data = type { i32, i64 }

@AR71XX_RESET_GE0_PHY = common dso_local global i32 0, align 4
@AR71XX_RESET_GE1_PHY = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@MAC_CFG1_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %6)
  store %struct.ag71xx_platform_data* %7, %struct.ag71xx_platform_data** %3, align 8
  %8 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %11)
  %13 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @AR71XX_RESET_GE0_PHY, align 4
  %20 = load i32, i32* @AR71XX_RESET_GE1_PHY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @AR71XX_RESET_GE0_PHY, align 4
  %25 = load i32, i32* @AR71XX_RESET_GE1_PHY, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ath79_device_reset_set(i32 %30)
  %32 = call i32 @msleep(i32 50)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ath79_device_reset_clear(i32 %33)
  %35 = call i32 @msleep(i32 200)
  br label %36

36:                                               ; preds = %17, %1
  %37 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %38 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %39 = load i32, i32* @MAC_CFG1_SR, align 4
  %40 = call i32 @ag71xx_sb(%struct.ag71xx* %37, i32 %38, i32 %39)
  %41 = call i32 @udelay(i32 20)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ath79_device_reset_set(i32 %42)
  %44 = call i32 @msleep(i32 100)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ath79_device_reset_clear(i32 %45)
  %47 = call i32 @msleep(i32 200)
  %48 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %49 = call i32 @ag71xx_hw_setup(%struct.ag71xx* %48)
  %50 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %51 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %50)
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ath79_device_reset_set(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ath79_device_reset_clear(i32) #1

declare dso_local i32 @ag71xx_sb(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ag71xx_hw_setup(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
