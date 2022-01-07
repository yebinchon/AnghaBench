; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_open.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 (%struct.fe_priv*)* }
%struct.TYPE_3__ = type { i32 (%struct.fe_priv*)* }

@FE_TX_WB_DDONE = common dso_local global i32 0, align 4
@FE_RX_DMA_EN = common dso_local global i32 0, align 4
@FE_TX_DMA_EN = common dso_local global i32 0, align 4
@FE_FLAG_RX_2B_OFFSET = common dso_local global i32 0, align 4
@FE_RX_2B_OFFSET = common dso_local global i32 0, align 4
@FE_REG_PDMA_GLO_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fe_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.fe_priv* %9, %struct.fe_priv** %4, align 8
  %10 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %11 = call i32 @fe_init_dma(%struct.fe_priv* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %16 = call i32 @fe_free_dma(%struct.fe_priv* %15)
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @FE_TX_WB_DDONE, align 4
  %24 = load i32, i32* @FE_RX_DMA_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FE_TX_DMA_EN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %29 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FE_FLAG_RX_2B_OFFSET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @FE_RX_2B_OFFSET, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %18
  %39 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %40 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FE_REG_PDMA_GLO_CFG, align 4
  %48 = call i32 @fe_reg_w32(i32 %46, i32 %47)
  %49 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %50 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %49, i32 0, i32 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %54 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %38
  %58 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %59 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.fe_priv*)*, i32 (%struct.fe_priv*)** %61, align 8
  %63 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %64 = call i32 %62(%struct.fe_priv* %63)
  br label %65

65:                                               ; preds = %57, %38
  %66 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %67 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i64 (%struct.fe_priv*)*, i64 (%struct.fe_priv*)** %69, align 8
  %71 = icmp ne i64 (%struct.fe_priv*)* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %74 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i64 (%struct.fe_priv*)*, i64 (%struct.fe_priv*)** %76, align 8
  %78 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %79 = call i64 %77(%struct.fe_priv* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netif_carrier_on(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %81, %72, %65
  %85 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %86 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %85, i32 0, i32 2
  %87 = call i32 @napi_enable(i32* %86)
  %88 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %89 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %94 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %92, %97
  %99 = call i32 @fe_int_enable(i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i32 @netif_start_queue(%struct.net_device* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %84, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fe_init_dma(%struct.fe_priv*) #1

declare dso_local i32 @fe_free_dma(%struct.fe_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fe_reg_w32(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @fe_int_enable(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
