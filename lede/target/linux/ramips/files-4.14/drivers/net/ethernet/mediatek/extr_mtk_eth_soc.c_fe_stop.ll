; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_stop.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.fe_priv*)* }
%struct.TYPE_3__ = type { i32, i32 }

@FE_REG_PDMA_GLO_CFG = common dso_local global i32 0, align 4
@FE_TX_WB_DDONE = common dso_local global i32 0, align 4
@FE_RX_DMA_EN = common dso_local global i32 0, align 4
@FE_TX_DMA_EN = common dso_local global i32 0, align 4
@FE_TX_DMA_BUSY = common dso_local global i32 0, align 4
@FE_RX_DMA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.fe_priv* %7, %struct.fe_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_tx_disable(%struct.net_device* %8)
  %10 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %16 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %14, %19
  %21 = call i32 @fe_int_disable(i32 %20)
  %22 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 2
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %26 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %31 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fe_priv*)*, i32 (%struct.fe_priv*)** %33, align 8
  %35 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %36 = call i32 %34(%struct.fe_priv* %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %39 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* @FE_REG_PDMA_GLO_CFG, align 4
  %43 = call i32 @fe_reg_r32(i32 %42)
  %44 = load i32, i32* @FE_TX_WB_DDONE, align 4
  %45 = load i32, i32* @FE_RX_DMA_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FE_TX_DMA_EN, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %43, %49
  %51 = load i32, i32* @FE_REG_PDMA_GLO_CFG, align 4
  %52 = call i32 @fe_reg_w32(i32 %50, i32 %51)
  %53 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %54 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %71, %37
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32, i32* @FE_REG_PDMA_GLO_CFG, align 4
  %62 = call i32 @fe_reg_r32(i32 %61)
  %63 = load i32, i32* @FE_TX_DMA_BUSY, align 4
  %64 = load i32, i32* @FE_RX_DMA_BUSY, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @msleep(i32 20)
  br label %71

70:                                               ; preds = %60
  br label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %57

74:                                               ; preds = %70, %57
  %75 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %76 = call i32 @fe_free_dma(%struct.fe_priv* %75)
  ret i32 0
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @fe_int_disable(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fe_reg_w32(i32, i32) #1

declare dso_local i32 @fe_reg_r32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fe_free_dma(%struct.fe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
