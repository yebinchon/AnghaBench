; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_open.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.nuport_mac_priv = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable EMAC clock\0A\00", align 1
@RX_ENABLE = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@DEFER_CHECK = common dso_local global i32 0, align 4
@STRIP_PAD = common dso_local global i32 0, align 4
@DRTRY_DISABLE = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@HBD_DISABLE = common dso_local global i32 0, align 4
@CTRL_REG = common dso_local global i32 0, align 4
@nuport_mac_link_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to request link interrupt\0A\00", align 1
@nuport_mac_tx_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to request rx interrupt\0A\00", align 1
@LINK_INT_EN = common dso_local global i32 0, align 4
@LINK_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@LINK_PHY_REG_SHIFT = common dso_local global i32 0, align 4
@LINK_BIT_UP_SHIFT = common dso_local global i32 0, align 4
@LINK_INT_CSR = common dso_local global i32 0, align 4
@LINK_POLL_MASK = common dso_local global i32 0, align 4
@LINK_INT_POLL_TIME = common dso_local global i32 0, align 4
@nuport_mac_rx_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to request tx interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"rx ring init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nuport_mac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nuport_mac_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.nuport_mac_priv* %9, %struct.nuport_mac_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %11 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_enable(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %184

20:                                               ; preds = %1
  %21 = load i32, i32* @RX_ENABLE, align 4
  %22 = load i32, i32* @TX_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @DEFER_CHECK, align 4
  %27 = load i32, i32* @STRIP_PAD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DRTRY_DISABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @FULL_DUPLEX, align 4
  %34 = load i32, i32* @HBD_DISABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CTRL_REG, align 4
  %40 = call i32 @nuport_mac_writel(i32 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nuport_mac_change_mac_address(%struct.net_device* %41, i32 %44)
  %46 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %47 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @request_irq(i32 %48, i32* @nuport_mac_link_interrupt, i32 0, i32 %51, %struct.net_device* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %20
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %178

59:                                               ; preds = %20
  %60 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %61 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @request_irq(i32 %62, i32* @nuport_mac_tx_interrupt, i32 0, i32 %65, %struct.net_device* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @netdev_err(%struct.net_device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %172

73:                                               ; preds = %59
  %74 = load i32, i32* @LINK_INT_EN, align 4
  %75 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %76 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %75, i32 0, i32 7
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LINK_PHY_ADDR_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %74, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @LINK_PHY_REG_SHIFT, align 4
  %84 = shl i32 1, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @LINK_BIT_UP_SHIFT, align 4
  %88 = shl i32 2, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %92 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %91, i32 0, i32 5
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @LINK_INT_CSR, align 4
  %97 = call i32 @nuport_mac_writel(i32 %95, i32 %96)
  %98 = load i32, i32* @LINK_POLL_MASK, align 4
  %99 = load i32, i32* @LINK_INT_POLL_TIME, align 4
  %100 = call i32 @nuport_mac_writel(i32 %98, i32 %99)
  %101 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %102 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %101, i32 0, i32 5
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %106 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %105, i32 0, i32 7
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = call i32 @phy_start(%struct.TYPE_2__* %107)
  %109 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %110 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = call i32 @request_irq(i32 %111, i32* @nuport_mac_rx_interrupt, i32 0, i32 %114, %struct.net_device* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %73
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @netdev_err(%struct.net_device* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %166

122:                                              ; preds = %73
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = call i32 @netif_start_queue(%struct.net_device* %123)
  %125 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %126 = call i32 @nuport_mac_init_tx_ring(%struct.nuport_mac_priv* %125)
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @nuport_mac_init_rx_ring(%struct.net_device* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @netdev_err(%struct.net_device* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %158

134:                                              ; preds = %122
  %135 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %136 = call i32 @nuport_mac_reset_tx_dma(%struct.nuport_mac_priv* %135)
  %137 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %138 = call i32 @nuport_mac_reset_rx_dma(%struct.nuport_mac_priv* %137)
  %139 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %140 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %139, i32 0, i32 5
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %144 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %145 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @nuport_mac_start_rx_dma(%struct.nuport_mac_priv* %143, i32 %148)
  store i32 %149, i32* %4, align 4
  %150 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %151 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %150, i32 0, i32 5
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %155 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %154, i32 0, i32 4
  %156 = call i32 @napi_enable(i32* %155)
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %184

158:                                              ; preds = %131
  %159 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %160 = call i32 @nuport_mac_free_rx_ring(%struct.nuport_mac_priv* %159)
  %161 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %162 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = call i32 @free_irq(i32 %163, %struct.net_device* %164)
  br label %166

166:                                              ; preds = %158, %119
  %167 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %168 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.net_device*, %struct.net_device** %3, align 8
  %171 = call i32 @free_irq(i32 %169, %struct.net_device* %170)
  br label %172

172:                                              ; preds = %166, %70
  %173 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %174 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.net_device*, %struct.net_device** %3, align 8
  %177 = call i32 @free_irq(i32 %175, %struct.net_device* %176)
  br label %178

178:                                              ; preds = %172, %56
  %179 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %180 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @clk_disable(i32 %181)
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %178, %134, %16
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

declare dso_local i32 @nuport_mac_change_mac_address(%struct.net_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_start(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @nuport_mac_init_tx_ring(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_init_rx_ring(%struct.net_device*) #1

declare dso_local i32 @nuport_mac_reset_tx_dma(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_reset_rx_dma(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_start_rx_dma(%struct.nuport_mac_priv*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @nuport_mac_free_rx_ring(%struct.nuport_mac_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
