; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_del_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_del_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { %struct.nullb_device*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.nullb_device = type { i64, i32*, i32 }

@nullb_indexes = common dso_local global i32 0, align 4
@NULLB_DEV_FL_THROTTLED = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@NULL_Q_MQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nullb*)* @null_del_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_del_dev(%struct.nullb* %0) #0 {
  %2 = alloca %struct.nullb*, align 8
  %3 = alloca %struct.nullb_device*, align 8
  store %struct.nullb* %0, %struct.nullb** %2, align 8
  %4 = load %struct.nullb*, %struct.nullb** %2, align 8
  %5 = getelementptr inbounds %struct.nullb, %struct.nullb* %4, i32 0, i32 0
  %6 = load %struct.nullb_device*, %struct.nullb_device** %5, align 8
  store %struct.nullb_device* %6, %struct.nullb_device** %3, align 8
  %7 = load %struct.nullb*, %struct.nullb** %2, align 8
  %8 = getelementptr inbounds %struct.nullb, %struct.nullb* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ida_simple_remove(i32* @nullb_indexes, i32 %9)
  %11 = load %struct.nullb*, %struct.nullb** %2, align 8
  %12 = getelementptr inbounds %struct.nullb, %struct.nullb* %11, i32 0, i32 7
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.nullb*, %struct.nullb** %2, align 8
  %15 = getelementptr inbounds %struct.nullb, %struct.nullb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @del_gendisk(i32 %16)
  %18 = load i32, i32* @NULLB_DEV_FL_THROTTLED, align 4
  %19 = load %struct.nullb*, %struct.nullb** %2, align 8
  %20 = getelementptr inbounds %struct.nullb, %struct.nullb* %19, i32 0, i32 0
  %21 = load %struct.nullb_device*, %struct.nullb_device** %20, align 8
  %22 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %21, i32 0, i32 2
  %23 = call i64 @test_bit(i32 %18, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.nullb*, %struct.nullb** %2, align 8
  %27 = getelementptr inbounds %struct.nullb, %struct.nullb* %26, i32 0, i32 6
  %28 = call i32 @hrtimer_cancel(i32* %27)
  %29 = load %struct.nullb*, %struct.nullb** %2, align 8
  %30 = getelementptr inbounds %struct.nullb, %struct.nullb* %29, i32 0, i32 5
  %31 = load i32, i32* @LONG_MAX, align 4
  %32 = call i32 @atomic_long_set(i32* %30, i32 %31)
  %33 = load %struct.nullb*, %struct.nullb** %2, align 8
  %34 = call i32 @null_restart_queue_async(%struct.nullb* %33)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.nullb*, %struct.nullb** %2, align 8
  %37 = getelementptr inbounds %struct.nullb, %struct.nullb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @blk_cleanup_queue(i32 %38)
  %40 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %41 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NULL_Q_MQ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load %struct.nullb*, %struct.nullb** %2, align 8
  %47 = getelementptr inbounds %struct.nullb, %struct.nullb* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.nullb*, %struct.nullb** %2, align 8
  %50 = getelementptr inbounds %struct.nullb, %struct.nullb* %49, i32 0, i32 3
  %51 = icmp eq i32* %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.nullb*, %struct.nullb** %2, align 8
  %54 = getelementptr inbounds %struct.nullb, %struct.nullb* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @blk_mq_free_tag_set(i32* %55)
  br label %57

57:                                               ; preds = %52, %45, %35
  %58 = load %struct.nullb*, %struct.nullb** %2, align 8
  %59 = getelementptr inbounds %struct.nullb, %struct.nullb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @put_disk(i32 %60)
  %62 = load %struct.nullb*, %struct.nullb** %2, align 8
  %63 = call i32 @cleanup_queues(%struct.nullb* %62)
  %64 = load %struct.nullb*, %struct.nullb** %2, align 8
  %65 = call i64 @null_cache_active(%struct.nullb* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.nullb*, %struct.nullb** %2, align 8
  %69 = getelementptr inbounds %struct.nullb, %struct.nullb* %68, i32 0, i32 0
  %70 = load %struct.nullb_device*, %struct.nullb_device** %69, align 8
  %71 = call i32 @null_free_device_storage(%struct.nullb_device* %70, i32 1)
  br label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.nullb*, %struct.nullb** %2, align 8
  %74 = call i32 @kfree(%struct.nullb* %73)
  %75 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %76 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  ret void
}

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @null_restart_queue_async(%struct.nullb*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(i32) #1

declare dso_local i32 @cleanup_queues(%struct.nullb*) #1

declare dso_local i64 @null_cache_active(%struct.nullb*) #1

declare dso_local i32 @null_free_device_storage(%struct.nullb_device*, i32) #1

declare dso_local i32 @kfree(%struct.nullb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
