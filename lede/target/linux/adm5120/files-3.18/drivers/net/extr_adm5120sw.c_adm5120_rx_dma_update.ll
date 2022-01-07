; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_rx_dma_update.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_rx_dma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }

@RX_MAX_PKTLEN = common dso_local global i32 0, align 4
@DESC_OWN = common dso_local global i32 0, align 4
@DESC_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, %struct.sk_buff*, i32)* @adm5120_rx_dma_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_rx_dma_update(%struct.dma_desc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %8 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %10 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @RX_MAX_PKTLEN, align 4
  %12 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %13 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DESC_ADDR(i32 %16)
  %18 = load i32, i32* @DESC_OWN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @DESC_EOR, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %19, %26
  %28 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %29 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret void
}

declare dso_local i32 @DESC_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
