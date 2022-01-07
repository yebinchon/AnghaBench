; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_free_scq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_free_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scq_info = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { %struct.atm_vcc* }

@SCQ_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, %struct.scq_info*)* @free_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_scq(%struct.idt77252_dev* %0, %struct.scq_info* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.scq_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.scq_info* %1, %struct.scq_info** %4, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @SCQ_SIZE, align 4
  %12 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %13 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %16 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dma_free_coherent(i32* %10, i32 %11, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %54, %2
  %20 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %21 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %20, i32 0, i32 1
  %22 = call %struct.sk_buff* @skb_dequeue(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %26 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = call i32 @dma_unmap_single(i32* %28, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.atm_vcc*, %struct.atm_vcc** %38, align 8
  store %struct.atm_vcc* %39, %struct.atm_vcc** %6, align 8
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %41 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %40, i32 0, i32 0
  %42 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %41, align 8
  %43 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %46 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %45, i32 0, i32 0
  %47 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %46, align 8
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 %47(%struct.atm_vcc* %48, %struct.sk_buff* %49)
  br label %54

51:                                               ; preds = %24
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @dev_kfree_skb(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51, %44
  br label %19

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %91, %55
  %57 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %58 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %57, i32 0, i32 0
  %59 = call %struct.sk_buff* @skb_dequeue(i32* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %5, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %63 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_unmap_single(i32* %65, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %75, align 8
  store %struct.atm_vcc* %76, %struct.atm_vcc** %6, align 8
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %78 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %77, i32 0, i32 0
  %79 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %78, align 8
  %80 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %61
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %83 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %82, i32 0, i32 0
  %84 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %83, align 8
  %85 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 %84(%struct.atm_vcc* %85, %struct.sk_buff* %86)
  br label %91

88:                                               ; preds = %61
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @dev_kfree_skb(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %88, %81
  br label %56

92:                                               ; preds = %56
  %93 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %94 = call i32 @kfree(%struct.scq_info* %93)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.scq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
