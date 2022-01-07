; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.adm5120_if_priv = type { i32, %struct.net_device* }

@ADM5120_IRQ_SWITCH = common dso_local global i32 0, align 4
@adm5120sw_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@adm5120_if_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* ()* @adm5120_if_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @adm5120_if_alloc() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adm5120_if_priv*, align 8
  %4 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %4, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = icmp ne %struct.net_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %23

8:                                                ; preds = %0
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.adm5120_if_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.adm5120_if_priv* %10, %struct.adm5120_if_priv** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load %struct.adm5120_if_priv*, %struct.adm5120_if_priv** %3, align 8
  %13 = getelementptr inbounds %struct.adm5120_if_priv, %struct.adm5120_if_priv* %12, i32 0, i32 1
  store %struct.net_device* %11, %struct.net_device** %13, align 8
  %14 = load i32, i32* @ADM5120_IRQ_SWITCH, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  store i32* @adm5120sw_netdev_ops, i32** %18, align 8
  %19 = load i32, i32* @TX_TIMEOUT, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %22, %struct.net_device** %1, align 8
  br label %23

23:                                               ; preds = %8, %7
  %24 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %24
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.adm5120_if_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
