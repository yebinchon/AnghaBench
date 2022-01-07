; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32, i64, i32*, i32, i32, i32*, i64* }

@RX_ACT_BYTES = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to start rx dma\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RX ring full\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nuport_mac_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nuport_mac_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.nuport_mac_priv* %12, %struct.nuport_mac_priv** %6, align 8
  %13 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %18 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @RX_ACT_BYTES, align 4
  %23 = call i64 @nuport_mac_readl(i32 %22)
  %24 = sub nsw i64 %23, 4
  %25 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %26 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %25, i32 0, i32 6
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64 %24, i64* %31, align 8
  %32 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %33 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %36 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %40 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %44 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RX_RING_SIZE, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %21
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %50 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %21
  br label %55

52:                                               ; preds = %2
  %53 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %54 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %51
  %56 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %57 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %60 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %82

65:                                               ; preds = %55
  %66 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %67 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %68 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %71 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nuport_mac_start_rx_dma(%struct.nuport_mac_priv* %66, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @netdev_err(%struct.net_device* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %65
  br label %87

82:                                               ; preds = %55
  %83 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %84 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 @netdev_dbg(%struct.net_device* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %81
  %88 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %89 = call i32 @nuport_mac_has_work(%struct.nuport_mac_priv* %88)
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %94 = call i32 @nuport_mac_disable_rx_dma(%struct.nuport_mac_priv* %93)
  %95 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %96 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %95, i32 0, i32 4
  %97 = call i32 @napi_schedule(i32* %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %100 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %99, i32 0, i32 3
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %103
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nuport_mac_readl(i32) #1

declare dso_local i32 @nuport_mac_start_rx_dma(%struct.nuport_mac_priv*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nuport_mac_has_work(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_disable_rx_dma(%struct.nuport_mac_priv*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
