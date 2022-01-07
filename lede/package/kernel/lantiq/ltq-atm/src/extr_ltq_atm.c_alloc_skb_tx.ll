; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_alloc_skb_tx.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_alloc_skb_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }

@TX_INBAND_HEADER_LENGTH = common dso_local global i64 0, align 8
@MAX_TX_PACKET_ALIGN_BYTES = common dso_local global i64 0, align 8
@MAX_TX_PACKET_PADDING_BYTES = common dso_local global i64 0, align 8
@DATA_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32)* @alloc_skb_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_skb_tx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @TX_INBAND_HEADER_LENGTH, align 8
  %5 = load i64, i64* @MAX_TX_PACKET_ALIGN_BYTES, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @MAX_TX_PACKET_PADDING_BYTES, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %20 = add i32 %18, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %31 = sub nsw i32 %30, 1
  %32 = add i32 %29, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @TX_INBAND_HEADER_LENGTH, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @skb_reserve(%struct.sk_buff* %25, i64 %39)
  br label %41

41:                                               ; preds = %24, %1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %42
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
