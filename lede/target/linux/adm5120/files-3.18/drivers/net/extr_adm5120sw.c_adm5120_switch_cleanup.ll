; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_cleanup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SWITCH_INTS_ALL = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global %struct.net_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adm5120_switch_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_switch_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.net_device*, align 8
  %3 = load i32, i32* @SWITCH_INTS_ALL, align 4
  %4 = call i32 @sw_int_mask(i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.net_device**, %struct.net_device*** @adm5120_devs, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %12
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %2, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @unregister_netdev(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @free_netdev(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %17, %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %5

26:                                               ; preds = %5
  %27 = call i32 (...) @adm5120_switch_tx_ring_free()
  %28 = call i32 (...) @adm5120_switch_rx_ring_free()
  ret void
}

declare dso_local i32 @sw_int_mask(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @adm5120_switch_tx_ring_free(...) #1

declare dso_local i32 @adm5120_switch_rx_ring_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
