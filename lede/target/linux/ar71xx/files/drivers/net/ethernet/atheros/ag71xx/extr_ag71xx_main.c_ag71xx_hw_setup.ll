; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }
%struct.ag71xx_platform_data = type { i64, i64 }

@MAC_CFG1_INIT = common dso_local global i32 0, align 4
@MAC_CFG1_TFC = common dso_local global i32 0, align 4
@MAC_CFG1_RFC = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG2 = common dso_local global i32 0, align 4
@MAC_CFG2_PAD_CRC_EN = common dso_local global i32 0, align 4
@MAC_CFG2_LEN_CHECK = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG0 = common dso_local global i32 0, align 4
@FIFO_CFG0_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG2 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG4 = common dso_local global i32 0, align 4
@FIFO_CFG4_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG5 = common dso_local global i32 0, align 4
@FIFO_CFG5_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_setup(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %5)
  store %struct.ag71xx_platform_data* %6, %struct.ag71xx_platform_data** %3, align 8
  %7 = load i32, i32* @MAC_CFG1_INIT, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MAC_CFG1_TFC, align 4
  %14 = load i32, i32* @MAC_CFG1_RFC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %20 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ag71xx_wr(%struct.ag71xx* %19, i32 %20, i32 %21)
  %23 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %24 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %25 = load i32, i32* @MAC_CFG2_PAD_CRC_EN, align 4
  %26 = load i32, i32* @MAC_CFG2_LEN_CHECK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ag71xx_sb(%struct.ag71xx* %23, i32 %24, i32 %27)
  %29 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %30 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %31 = call i32 @ag71xx_wr(%struct.ag71xx* %29, i32 %30, i32 0)
  %32 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %33 = load i32, i32* @AG71XX_REG_FIFO_CFG0, align 4
  %34 = load i32, i32* @FIFO_CFG0_INIT, align 4
  %35 = call i32 @ag71xx_wr(%struct.ag71xx* %32, i32 %33, i32 %34)
  %36 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %37 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %42 = load i32, i32* @AG71XX_REG_FIFO_CFG1, align 4
  %43 = call i32 @ag71xx_wr(%struct.ag71xx* %41, i32 %42, i32 1114111)
  %44 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %45 = load i32, i32* @AG71XX_REG_FIFO_CFG2, align 4
  %46 = call i32 @ag71xx_wr(%struct.ag71xx* %44, i32 %45, i32 22347946)
  br label %54

47:                                               ; preds = %18
  %48 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %49 = load i32, i32* @AG71XX_REG_FIFO_CFG1, align 4
  %50 = call i32 @ag71xx_wr(%struct.ag71xx* %48, i32 %49, i32 268369920)
  %51 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %52 = load i32, i32* @AG71XX_REG_FIFO_CFG2, align 4
  %53 = call i32 @ag71xx_wr(%struct.ag71xx* %51, i32 %52, i32 8191)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %56 = load i32, i32* @AG71XX_REG_FIFO_CFG4, align 4
  %57 = load i32, i32* @FIFO_CFG4_INIT, align 4
  %58 = call i32 @ag71xx_wr(%struct.ag71xx* %55, i32 %56, i32 %57)
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %61 = load i32, i32* @FIFO_CFG5_INIT, align 4
  %62 = call i32 @ag71xx_wr(%struct.ag71xx* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_sb(%struct.ag71xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
