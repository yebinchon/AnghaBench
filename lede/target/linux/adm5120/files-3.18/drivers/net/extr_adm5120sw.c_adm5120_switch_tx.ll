; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_tx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.sk_buff = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@tx_lock = common dso_local global i32 0, align 4
@dirty_txl = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@cur_txl = common dso_local global i32 0, align 4
@txl_descs = common dso_local global %struct.dma_desc* null, align 8
@txl_skbuff = common dso_local global %struct.sk_buff** null, align 8
@DESC_OWN = common dso_local global i32 0, align 4
@TX_QUEUE_LEN = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adm5120_switch_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_switch_tx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dma_desc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @spin_lock(i32* @tx_lock)
  %6 = load i32, i32* @dirty_txl, align 4
  %7 = load i32, i32* @TX_RING_SIZE, align 4
  %8 = srem i32 %6, %7
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %56, %0
  %10 = load i32, i32* @dirty_txl, align 4
  %11 = load i32, i32* @cur_txl, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = load %struct.dma_desc*, %struct.dma_desc** @txl_descs, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %14, i64 %16
  store %struct.dma_desc* %17, %struct.dma_desc** %2, align 8
  %18 = load %struct.sk_buff**, %struct.sk_buff*** @txl_skbuff, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %18, i64 %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %3, align 8
  %23 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %24 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DESC_OWN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %67

30:                                               ; preds = %13
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @netif_running(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %39
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %36, %30
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %57)
  %59 = load %struct.sk_buff**, %struct.sk_buff*** @txl_skbuff, align 8
  %60 = load i32, i32* %1, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %59, i64 %61
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  %63 = load i32, i32* @dirty_txl, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @dirty_txl, align 4
  %65 = load i32, i32* @TX_RING_SIZE, align 4
  %66 = srem i32 %64, %65
  store i32 %66, i32* %1, align 4
  br label %9

67:                                               ; preds = %29, %9
  %68 = load i32, i32* @cur_txl, align 4
  %69 = load i32, i32* @dirty_txl, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* @TX_QUEUE_LEN, align 4
  %72 = sub nsw i32 %71, 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %94, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32*, i32** @adm5120_devs, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %94

87:                                               ; preds = %79
  %88 = load i32*, i32** @adm5120_devs, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @netif_wake_queue(i32 %92)
  br label %94

94:                                               ; preds = %87, %86
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %75

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %67
  %99 = call i32 @spin_unlock(i32* @tx_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
