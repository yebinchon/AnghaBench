; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_hw_start.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_device = type { i64 }
%struct.ag71xx = type { i32, i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: txdesc reg: %#08x rxdesc reg: %#08x\0A\00", align 1
@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@RX_CTRL_RXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth_device*, i32*)* @ag71xx_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hw_start(%struct.eth_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eth_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ag71xx*, align 8
  store %struct.eth_device* %0, %struct.eth_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.eth_device*, %struct.eth_device** %4, align 8
  %8 = getelementptr inbounds %struct.eth_device, %struct.eth_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ag71xx*
  store %struct.ag71xx* %10, %struct.ag71xx** %6, align 8
  %11 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %12 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %11)
  %13 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %14 = call i32 @ag71xx_ring_rx_clean(%struct.ag71xx* %13)
  %15 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %16 = call i32 @ag71xx_ring_tx_init(%struct.ag71xx* %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %18 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %19 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @virt_to_phys(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ag71xx_wr(%struct.ag71xx* %17, i32 %18, i32 %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %27 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %28 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %29 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @virt_to_phys(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ag71xx_wr(%struct.ag71xx* %26, i32 %27, i32 %33)
  %35 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %36 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %37 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %35, i32 %40)
  %42 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %43 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %48 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %50 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @SPEED_1000, align 4
  %52 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %53 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %55

54:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

55:                                               ; preds = %46
  %56 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %57 = call i32 @ag71xx_link_adjust(%struct.ag71xx* %56)
  %58 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %59 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %64 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %65 = call i32 @ag71xx_rr(%struct.ag71xx* %63, i32 %64)
  %66 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %67 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %68 = call i32 @ag71xx_rr(%struct.ag71xx* %66, i32 %67)
  %69 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68)
  %70 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %71 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %72 = load i32, i32* @RX_CTRL_RXE, align 4
  %73 = call i32 @ag71xx_wr(%struct.ag71xx* %70, i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %55, %54
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_ring_rx_clean(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_ring_tx_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_link_adjust(%struct.ag71xx*) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
