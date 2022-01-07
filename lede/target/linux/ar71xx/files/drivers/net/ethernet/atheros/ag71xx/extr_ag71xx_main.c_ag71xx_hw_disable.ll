; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_disable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_disable(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %4 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %5 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @netif_stop_queue(i32 %10)
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %12)
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %14)
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 2
  %18 = call i32 @napi_disable(i32* %17)
  %19 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 1
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %22, i32 0, i32 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = call i32 @ag71xx_rings_cleanup(%struct.ag71xx* %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ag71xx_rings_cleanup(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
