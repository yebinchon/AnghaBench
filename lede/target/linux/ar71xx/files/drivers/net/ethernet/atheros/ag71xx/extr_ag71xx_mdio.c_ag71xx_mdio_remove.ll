; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ag71xx_mdio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ag71xx_mdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ag71xx_mdio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ag71xx_mdio* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ag71xx_mdio* %5, %struct.ag71xx_mdio** %3, align 8
  %6 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %7 = icmp ne %struct.ag71xx_mdio* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %10 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mdiobus_unregister(i32 %11)
  %13 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mdiobus_free(i32 %15)
  %17 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %18 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %22 = call i32 @kfree(%struct.ag71xx_mdio* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %23, i32* null)
  br label %25

25:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local %struct.ag71xx_mdio* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.ag71xx_mdio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
