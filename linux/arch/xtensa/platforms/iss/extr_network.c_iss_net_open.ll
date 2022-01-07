; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iss_net_private = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.iss_net_private.0*)* }
%struct.iss_net_private.0 = type opaque

@opened_lock = common dso_local global i32 0, align 4
@opened = common dso_local global i32 0, align 4
@iss_net_timer = common dso_local global i32 0, align 4
@ISS_NET_TIMER_VALUE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iss_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_net_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.iss_net_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.iss_net_private* @netdev_priv(%struct.net_device* %5)
  store %struct.iss_net_private* %6, %struct.iss_net_private** %3, align 8
  %7 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %8 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %11 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.iss_net_private.0*)*, i32 (%struct.iss_net_private.0*)** %12, align 8
  %14 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %15 = bitcast %struct.iss_net_private* %14 to %struct.iss_net_private.0*
  %16 = call i32 %13(%struct.iss_net_private.0* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_start_queue(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %27, %20
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @iss_net_rx(%struct.net_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %23

28:                                               ; preds = %23
  %29 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %30 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = call i32 @spin_lock_bh(i32* @opened_lock)
  %33 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %34 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %33, i32 0, i32 3
  %35 = call i32 @list_add(i32* %34, i32* @opened)
  %36 = call i32 @spin_unlock_bh(i32* @opened_lock)
  %37 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %38 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %41 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %40, i32 0, i32 2
  %42 = load i32, i32* @iss_net_timer, align 4
  %43 = call i32 @timer_setup(i32* %41, i32 %42, i32 0)
  %44 = load i64, i64* @ISS_NET_TIMER_VALUE, align 8
  %45 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %46 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %48 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %47, i32 0, i32 2
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %51 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @mod_timer(i32* %48, i64 %53)
  br label %55

55:                                               ; preds = %28, %19
  %56 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %57 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.iss_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @iss_net_rx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
