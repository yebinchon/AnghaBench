; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_alloc_skb_rx.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_alloc_skb_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }

@RX_DMA_CH_AAL_BUF_SIZE = common dso_local global i64 0, align 8
@DATA_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@LESS_CACHE_INV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* ()* @alloc_skb_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_skb_rx() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = load i64, i64* @RX_DMA_CH_AAL_BUF_SIZE, align 8
  %3 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %2, %4
  %6 = call %struct.sk_buff* @dev_alloc_skb(i64 %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %1, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %0
  %10 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %25 = sub nsw i32 %24, 1
  %26 = add i32 %23, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = call i32 @skb_reserve(%struct.sk_buff* %19, i32 %30)
  br label %32

32:                                               ; preds = %18, %9
  %33 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.sk_buff**
  %38 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %37, i64 -1
  store %struct.sk_buff* %33, %struct.sk_buff** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 8
  %43 = call i32 @dma_cache_wback_inv(i64 %42, i32 8)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RX_DMA_CH_AAL_BUF_SIZE, align 8
  %48 = call i32 @dma_cache_inv(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %32, %0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_cache_wback_inv(i64, i32) #1

declare dso_local i32 @dma_cache_inv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
