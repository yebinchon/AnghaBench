; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_free_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_free_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.mtip_cmd = type { i32, i32 }

@CMD_DMA_ALLOC_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tag_set*, %struct.request*, i32)* @mtip_free_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_free_cmd(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.driver_data*, align 8
  %8 = alloca %struct.mtip_cmd*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %9, i32 0, i32 0
  %11 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  store %struct.driver_data* %11, %struct.driver_data** %7, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.mtip_cmd* %13, %struct.mtip_cmd** %8, align 8
  %14 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @CMD_DMA_ALLOC_SZ, align 4
  %25 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %29 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_free_coherent(i32* %23, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
