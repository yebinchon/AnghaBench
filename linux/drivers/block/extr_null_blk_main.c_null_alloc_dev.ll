; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@g_gb = common dso_local global i32 0, align 4
@g_completion_nsec = common dso_local global i32 0, align 4
@g_submit_queues = common dso_local global i32 0, align 4
@g_home_node = common dso_local global i32 0, align 4
@g_queue_mode = common dso_local global i32 0, align 4
@g_bs = common dso_local global i32 0, align 4
@g_irqmode = common dso_local global i32 0, align 4
@g_hw_queue_depth = common dso_local global i32 0, align 4
@g_blocking = common dso_local global i32 0, align 4
@g_use_per_node_hctx = common dso_local global i32 0, align 4
@g_zoned = common dso_local global i32 0, align 4
@g_zone_size = common dso_local global i32 0, align 4
@g_zone_nr_conv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_device* ()* @null_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_device* @null_alloc_dev() #0 {
  %1 = alloca %struct.nullb_device*, align 8
  %2 = alloca %struct.nullb_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.nullb_device* @kzalloc(i32 64, i32 %3)
  store %struct.nullb_device* %4, %struct.nullb_device** %2, align 8
  %5 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %6 = icmp ne %struct.nullb_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nullb_device* null, %struct.nullb_device** %1, align 8
  br label %66

8:                                                ; preds = %0
  %9 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %10 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %9, i32 0, i32 15
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32 @INIT_RADIX_TREE(i32* %10, i32 %11)
  %13 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %14 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %13, i32 0, i32 14
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i32 @INIT_RADIX_TREE(i32* %14, i32 %15)
  %17 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %18 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %17, i32 0, i32 13
  %19 = call i64 @badblocks_init(i32* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %23 = call i32 @kfree(%struct.nullb_device* %22)
  store %struct.nullb_device* null, %struct.nullb_device** %1, align 8
  br label %66

24:                                               ; preds = %8
  %25 = load i32, i32* @g_gb, align 4
  %26 = mul nsw i32 %25, 1024
  %27 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %28 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @g_completion_nsec, align 4
  %30 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %31 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @g_submit_queues, align 4
  %33 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %34 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @g_home_node, align 4
  %36 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %37 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @g_queue_mode, align 4
  %39 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %40 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @g_bs, align 4
  %42 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %43 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @g_irqmode, align 4
  %45 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %46 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @g_hw_queue_depth, align 4
  %48 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %49 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @g_blocking, align 4
  %51 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %52 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @g_use_per_node_hctx, align 4
  %54 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %55 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @g_zoned, align 4
  %57 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %58 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @g_zone_size, align 4
  %60 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %61 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @g_zone_nr_conv, align 4
  %63 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  %64 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nullb_device*, %struct.nullb_device** %2, align 8
  store %struct.nullb_device* %65, %struct.nullb_device** %1, align 8
  br label %66

66:                                               ; preds = %24, %21, %7
  %67 = load %struct.nullb_device*, %struct.nullb_device** %1, align 8
  ret %struct.nullb_device* %67
}

declare dso_local %struct.nullb_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @badblocks_init(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nullb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
