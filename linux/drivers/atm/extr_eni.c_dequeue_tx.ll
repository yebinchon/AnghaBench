; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_dequeue_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_dequeue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i64, i32, %struct.TYPE_6__*, i32 (%struct.eni_tx*, %struct.sk_buff*)*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.eni_tx = type { i64, i32, %struct.TYPE_6__*, {}*, %struct.TYPE_5__*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.eni_dev = type { i64, i32, %struct.TYPE_6__*, i32 (%struct.eni_tx*, %struct.sk_buff*)*, %struct.TYPE_5__*, i32, i32 }
%struct.atm_vcc = type { i64, i32, %struct.TYPE_6__*, i32 (%struct.eni_tx*, %struct.sk_buff*)*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.eni_tx* }
%struct.TYPE_7__ = type { i64, %struct.eni_tx* }

@.str = private unnamed_addr constant [34 x i8] c"dequeue_tx: next 0x%lx curr 0x%x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*)* @dequeue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_tx(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.eni_dev*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.eni_tx*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %7 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %8 = bitcast %struct.atm_dev* %7 to %struct.eni_tx*
  %9 = call i32 @NULLCHECK(%struct.eni_tx* %8)
  %10 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %11 = bitcast %struct.atm_dev* %10 to %struct.eni_tx*
  %12 = call %struct.eni_tx* @ENI_DEV(%struct.eni_tx* %11)
  %13 = bitcast %struct.eni_tx* %12 to %struct.eni_dev*
  store %struct.eni_dev* %13, %struct.eni_dev** %3, align 8
  %14 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %15 = bitcast %struct.eni_dev* %14 to %struct.eni_tx*
  %16 = call i32 @NULLCHECK(%struct.eni_tx* %15)
  br label %17

17:                                               ; preds = %109, %1
  %18 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %19 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %18, i32 0, i32 5
  %20 = call %struct.sk_buff* @skb_dequeue(i32* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %120

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.eni_tx*, %struct.eni_tx** %25, align 8
  %27 = bitcast %struct.eni_tx* %26 to %struct.atm_vcc*
  store %struct.atm_vcc* %27, %struct.atm_vcc** %4, align 8
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %29 = bitcast %struct.atm_vcc* %28 to %struct.eni_tx*
  %30 = call i32 @NULLCHECK(%struct.eni_tx* %29)
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %32 = bitcast %struct.atm_vcc* %31 to %struct.eni_tx*
  %33 = call %struct.TYPE_7__* @ENI_VCC(%struct.eni_tx* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.eni_tx*, %struct.eni_tx** %34, align 8
  store %struct.eni_tx* %35, %struct.eni_tx** %6, align 8
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %37 = bitcast %struct.atm_vcc* %36 to %struct.eni_tx*
  %38 = call %struct.TYPE_7__* @ENI_VCC(%struct.eni_tx* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.eni_tx*, %struct.eni_tx** %39, align 8
  %41 = call i32 @NULLCHECK(%struct.eni_tx* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i64 @ENI_PRV_POS(%struct.sk_buff* %42)
  %44 = load %struct.eni_tx*, %struct.eni_tx** %6, align 8
  %45 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MID_TX_DESCRSTART(i32 %46)
  %48 = call i64 @eni_in(i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %49)
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %52 = bitcast %struct.atm_vcc* %51 to %struct.eni_tx*
  %53 = call %struct.TYPE_7__* @ENI_VCC(%struct.eni_tx* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.eni_tx*, %struct.eni_tx** %6, align 8
  %57 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %22
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i64 @ENI_PRV_POS(%struct.sk_buff* %61)
  %63 = load %struct.eni_tx*, %struct.eni_tx** %6, align 8
  %64 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MID_TX_DESCRSTART(i32 %65)
  %67 = call i64 @eni_in(i32 %66)
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %71 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %70, i32 0, i32 5
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @skb_queue_head(i32* %71, %struct.sk_buff* %72)
  br label %120

74:                                               ; preds = %60, %22
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i64 @ENI_PRV_SIZE(%struct.sk_buff* %75)
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %78 = bitcast %struct.atm_vcc* %77 to %struct.eni_tx*
  %79 = call %struct.TYPE_7__* @ENI_VCC(%struct.eni_tx* %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %76
  store i64 %82, i64* %80, align 8
  %83 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %84 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @ENI_PRV_PADDR(%struct.sk_buff* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = call i32 @dma_unmap_single(i32* %86, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %95 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %94, i32 0, i32 3
  %96 = load i32 (%struct.eni_tx*, %struct.sk_buff*)*, i32 (%struct.eni_tx*, %struct.sk_buff*)** %95, align 8
  %97 = icmp ne i32 (%struct.eni_tx*, %struct.sk_buff*)* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %74
  %99 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %100 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %99, i32 0, i32 3
  %101 = load i32 (%struct.eni_tx*, %struct.sk_buff*)*, i32 (%struct.eni_tx*, %struct.sk_buff*)** %100, align 8
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %103 = bitcast %struct.atm_vcc* %102 to %struct.eni_tx*
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 %101(%struct.eni_tx* %103, %struct.sk_buff* %104)
  br label %109

106:                                              ; preds = %74
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %106, %98
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %111 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @atomic_inc(i32* %113)
  %115 = load %struct.eni_dev*, %struct.eni_dev** %3, align 8
  %116 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %115, i32 0, i32 1
  %117 = call i32 @wake_up(i32* %116)
  %118 = load i32, i32* @dma_complete, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @dma_complete, align 4
  br label %17

120:                                              ; preds = %69, %17
  ret void
}

declare dso_local i32 @NULLCHECK(%struct.eni_tx*) #1

declare dso_local %struct.eni_tx* @ENI_DEV(%struct.eni_tx*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ENI_VCC(%struct.eni_tx*) #1

declare dso_local i32 @DPRINTK(i8*, i64, i32) #1

declare dso_local i64 @ENI_PRV_POS(%struct.sk_buff*) #1

declare dso_local i64 @eni_in(i32) #1

declare dso_local i32 @MID_TX_DESCRSTART(i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i64 @ENI_PRV_SIZE(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @ENI_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
