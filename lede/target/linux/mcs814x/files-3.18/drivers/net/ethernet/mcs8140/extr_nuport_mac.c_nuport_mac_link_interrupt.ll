; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_link_interrupt.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_link_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@LINK_INT_CSR = common dso_local global i32 0, align 4
@LINK_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"spurious PHY irq (phy: %d)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nuport_mac_link_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_link_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nuport_mac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.nuport_mac_priv* %14, %struct.nuport_mac_priv** %6, align 8
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %17 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @LINK_INT_CSR, align 4
  %21 = call i32 @nuport_mac_readl(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LINK_PHY_ADDR_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @PHY_MAX_ADDR, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %30 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %10, align 4
  br label %50

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LINK_UP, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %45 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @nuport_mac_adjust_link(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %52 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @nuport_mac_adjust_link(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
