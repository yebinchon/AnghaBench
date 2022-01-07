; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.mtip_cmd = type { i32, i32, i32 }

@CMD_DMA_ALLOC_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTIP_MAX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @mtip_init_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_init_cmd(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.driver_data*, align 8
  %11 = alloca %struct.mtip_cmd*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %12, i32 0, i32 0
  %14 = load %struct.driver_data*, %struct.driver_data** %13, align 8
  store %struct.driver_data* %14, %struct.driver_data** %10, align 8
  %15 = load %struct.request*, %struct.request** %7, align 8
  %16 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %15)
  store %struct.mtip_cmd* %16, %struct.mtip_cmd** %11, align 8
  %17 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @CMD_DMA_ALLOC_SZ, align 4
  %22 = load %struct.mtip_cmd*, %struct.mtip_cmd** %11, align 8
  %23 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @dma_alloc_coherent(i32* %20, i32 %21, i32* %23, i32 %24)
  %26 = load %struct.mtip_cmd*, %struct.mtip_cmd** %11, align 8
  %27 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mtip_cmd*, %struct.mtip_cmd** %11, align 8
  %29 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load %struct.mtip_cmd*, %struct.mtip_cmd** %11, align 8
  %37 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MTIP_MAX_SG, align 4
  %40 = call i32 @sg_init_table(i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
