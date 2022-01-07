; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_queue_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.page = type { i32 }
%struct.rsxx_dma = type { i32, i32, i32, %struct.page*, %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@rsxx_dma_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@HW_CMD_BLK_WRITE = common dso_local global i32 0, align 4
@HW_CMD_BLK_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Queuing[%c] laddr %x off %d cnt %d page %p pg_off %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, %struct.list_head*, i32, i32, i32, i32, %struct.page*, i32, i32, i8*)* @rsxx_queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_queue_dma(%struct.rsxx_cardinfo* %0, %struct.list_head* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.page* %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.rsxx_cardinfo*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %12, align 8
  store %struct.list_head* %1, %struct.list_head** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.page* %6, %struct.page** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %23 = load i32, i32* @rsxx_dma_pool, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rsxx_dma* @kmem_cache_alloc(i32 %23, i32 %24)
  store %struct.rsxx_dma* %25, %struct.rsxx_dma** %22, align 8
  %26 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %27 = icmp ne %struct.rsxx_dma* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %10
  %29 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %29, i32* %11, align 4
  br label %95

30:                                               ; preds = %10
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @HW_CMD_BLK_WRITE, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @HW_CMD_BLK_READ, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %40 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %43 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %15, align 4
  %45 = lshr i32 %44, 9
  %46 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %47 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = lshr i32 %49, 9
  %51 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.page*, %struct.page** %18, align 8
  %55 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %56 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %55, i32 0, i32 3
  store %struct.page* %54, %struct.page** %56, align 8
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %59 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %62 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %21, align 8
  %64 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %65 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %12, align 8
  %67 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %66)
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 87, i32 82
  %72 = trunc i32 %71 to i8
  %73 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %74 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %77 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %81 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %85 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %84, i32 0, i32 3
  %86 = load %struct.page*, %struct.page** %85, align 8
  %87 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %88 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 signext %72, i32 %75, i32 %79, i32 %83, %struct.page* %86, i32 %89)
  %91 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %92 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %91, i32 0, i32 2
  %93 = load %struct.list_head*, %struct.list_head** %13, align 8
  %94 = call i32 @list_add_tail(i32* %92, %struct.list_head* %93)
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %37, %28
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local %struct.rsxx_dma* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32, i32, i32, %struct.page*, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
