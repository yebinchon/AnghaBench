; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.sk_buff = type { i32 }

@SKB_ALLOC_LEN = common dso_local global i32 0, align 4
@SKB_RESERVE_LEN = common dso_local global i32 0, align 4
@cur_rxl = common dso_local global i64 0, align 8
@dirty_rxl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, %struct.sk_buff**, i32)* @adm5120_switch_rx_ring_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_switch_rx_ring_reset(%struct.dma_desc* %0, %struct.sk_buff** %1, i32 %2) #0 {
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memset(%struct.dma_desc* %8, i32 0, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load i32, i32* @SKB_ALLOC_LEN, align 4
  %20 = call %struct.sk_buff* @dev_alloc_skb(i32 %19)
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %21, i64 %23
  store %struct.sk_buff* %20, %struct.sk_buff** %24, align 8
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %7, align 4
  br label %59

33:                                               ; preds = %18
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = load i32, i32* @SKB_RESERVE_LEN, align 4
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %41, i64 %43
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @adm5120_rx_dma_update(%struct.dma_desc* %44, %struct.sk_buff* %49, i32 %54)
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %14

59:                                               ; preds = %31, %14
  store i64 0, i64* @cur_rxl, align 8
  store i64 0, i64* @dirty_rxl, align 8
  ret void
}

declare dso_local i32 @memset(%struct.dma_desc*, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @adm5120_rx_dma_update(%struct.dma_desc*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
