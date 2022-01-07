; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@RX_DESCS_SIZE = common dso_local global i32 0, align 4
@rxl_descs_dma = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rxl_descs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_SKBS_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rxl_skbuff = common dso_local global %struct.sk_buff** null, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@SKB_ALLOC_LEN = common dso_local global i32 0, align 4
@SKB_RESERVE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @adm5120_switch_rx_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_switch_rx_ring_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = load i32, i32* @RX_DESCS_SIZE, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call i32 @dma_alloc_coherent(i32* null, i32 %5, i32* @rxl_descs_dma, i32 %6)
  store i32 %7, i32* @rxl_descs, align 4
  %8 = load i32, i32* @rxl_descs, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %0
  %14 = load i32, i32* @RX_SKBS_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sk_buff** @kzalloc(i32 %14, i32 %15)
  store %struct.sk_buff** %16, %struct.sk_buff*** @rxl_skbuff, align 8
  %17 = load %struct.sk_buff**, %struct.sk_buff*** @rxl_skbuff, align 8
  %18 = icmp ne %struct.sk_buff** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @RX_RING_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i32, i32* @SKB_ALLOC_LEN, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.sk_buff**, %struct.sk_buff*** @rxl_skbuff, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  store %struct.sk_buff* %37, %struct.sk_buff** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @SKB_RESERVE_LEN, align 4
  %44 = call i32 @skb_reserve(%struct.sk_buff* %42, i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %23

48:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %51

49:                                               ; preds = %33, %19, %10
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local %struct.sk_buff** @kzalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
