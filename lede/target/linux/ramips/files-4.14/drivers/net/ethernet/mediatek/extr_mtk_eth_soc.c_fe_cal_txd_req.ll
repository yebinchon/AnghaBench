; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_cal_txd_req.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_cal_txd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@TX_DMA_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @fe_cal_txd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_cal_txd_req(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.skb_frag_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %54, %1
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call i64 @skb_is_gso(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %26, i64 %28
  store %struct.skb_frag_struct* %29, %struct.skb_frag_struct** %6, align 8
  %30 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %6, align 8
  %31 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TX_DMA_BUF_LEN, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %15
  br label %48

41:                                               ; preds = %8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = call %struct.sk_buff* @fe_next_frag(%struct.sk_buff* %49, %struct.sk_buff* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %2, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %8

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %56, i32 2)
  ret i32 %57
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.sk_buff* @fe_next_frag(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
