; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_drain_scq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_drain_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vc_map = type { %struct.scq_info* }
%struct.scq_info = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { %struct.TYPE_5__*, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [41 x i8] c"%s: SCQ (before drain %2d) next = 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: freeing skb at %p.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, %struct.vc_map*)* @drain_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_scq(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca %struct.scq_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.vc_map* %1, %struct.vc_map** %4, align 8
  %8 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %9 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %8, i32 0, i32 0
  %10 = load %struct.scq_info*, %struct.scq_info** %9, align 8
  store %struct.scq_info* %10, %struct.scq_info** %5, align 8
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %15 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %14, i32 0, i32 2
  %16 = call i32 @atomic_read(i32* %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.sk_buff*
  %19 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %20 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, %struct.sk_buff*, ...) @TXPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.sk_buff* %18, i32 %21)
  %23 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %24 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %23, i32 0, i32 3
  %25 = call %struct.sk_buff* @skb_dequeue(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %2
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 (i8*, i32, %struct.sk_buff*, ...) @TXPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.sk_buff* %32)
  %34 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %35 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(i32* %37, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %47, align 8
  store %struct.atm_vcc* %48, %struct.atm_vcc** %7, align 8
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 1
  %51 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %50, align 8
  %52 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %28
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %55 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %54, i32 0, i32 1
  %56 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %55, align 8
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 %56(%struct.atm_vcc* %57, %struct.sk_buff* %58)
  br label %63

60:                                               ; preds = %28
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @dev_kfree_skb(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %65 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @atomic_inc(i32* %67)
  br label %69

69:                                               ; preds = %63, %2
  %70 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %71 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %70, i32 0, i32 2
  %72 = call i32 @atomic_dec(i32* %71)
  %73 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %74 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %73, i32 0, i32 0
  %75 = call i32 @spin_lock(i32* %74)
  br label %76

76:                                               ; preds = %94, %69
  %77 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %78 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %77, i32 0, i32 1
  %79 = call %struct.sk_buff* @skb_dequeue(i32* %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %6, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %83 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i64 @push_on_scq(%struct.idt77252_dev* %82, %struct.vc_map* %83, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %89 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %88, i32 0, i32 0
  %90 = load %struct.scq_info*, %struct.scq_info** %89, align 8
  %91 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %90, i32 0, i32 1
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @skb_queue_head(i32* %91, %struct.sk_buff* %92)
  br label %95

94:                                               ; preds = %81
  br label %76

95:                                               ; preds = %87, %76
  %96 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %97 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  ret void
}

declare dso_local i32 @TXPRINTK(i8*, i32, %struct.sk_buff*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @push_on_scq(%struct.idt77252_dev*, %struct.vc_map*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
