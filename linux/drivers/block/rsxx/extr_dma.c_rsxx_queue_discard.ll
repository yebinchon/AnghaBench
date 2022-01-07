; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_queue_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_queue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.rsxx_dma = type { i32, i32, i8*, i32, i64, i32*, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@rsxx_dma_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@HW_CMD_BLK_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Queuing[D] laddr %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, %struct.list_head*, i32, i32, i8*)* @rsxx_queue_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_queue_discard(%struct.rsxx_cardinfo* %0, %struct.list_head* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_cardinfo*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @rsxx_dma_pool, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rsxx_dma* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.rsxx_dma* %15, %struct.rsxx_dma** %12, align 8
  %16 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %17 = icmp ne %struct.rsxx_dma* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %5
  %21 = load i32, i32* @HW_CMD_BLK_DISCARD, align 4
  %22 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %23 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %26 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %28 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %30 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %33 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %36 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %38 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %41 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %44 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %7, align 8
  %46 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %45)
  %47 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %48 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %51, i32 0, i32 1
  %53 = load %struct.list_head*, %struct.list_head** %8, align 8
  %54 = call i32 @list_add_tail(i32* %52, %struct.list_head* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %20, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.rsxx_dma* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
