; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, %struct.psb6970_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.psb6970_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @psb6970_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb6970_remove(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.psb6970_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 1
  %6 = load %struct.psb6970_priv*, %struct.psb6970_priv** %5, align 8
  store %struct.psb6970_priv* %6, %struct.psb6970_priv** %3, align 8
  %7 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %8 = icmp ne %struct.psb6970_priv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %18 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %17, i32 0, i32 0
  %19 = call i32 @unregister_switch(i32* %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %22 = call i32 @kfree(%struct.psb6970_priv* %21)
  br label %23

23:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @unregister_switch(i32*) #1

declare dso_local i32 @kfree(%struct.psb6970_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
