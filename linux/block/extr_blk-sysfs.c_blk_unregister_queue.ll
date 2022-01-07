; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_blk_unregister_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_blk_unregister_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@QUEUE_FLAG_REGISTERED = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_unregister_queue(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 0
  %6 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %6, %struct.request_queue** %3, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = icmp ne %struct.request_queue* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = call i32 @blk_queue_registered(%struct.request_queue* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %72

19:                                               ; preds = %14
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @QUEUE_FLAG_REGISTERED, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = call i32 @blk_queue_flag_clear(i32 %23, %struct.request_queue* %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %33 = call i64 @queue_is_mq(%struct.request_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %37 = call %struct.TYPE_4__* @disk_to_dev(%struct.gendisk* %36)
  %38 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %39 = call i32 @blk_mq_unregister_dev(%struct.TYPE_4__* %37, %struct.request_queue* %38)
  br label %40

40:                                               ; preds = %35, %19
  %41 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %42 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %41, i32 0, i32 3
  %43 = load i32, i32* @KOBJ_REMOVE, align 4
  %44 = call i32 @kobject_uevent(i32* %42, i32 %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 3
  %47 = call i32 @kobject_del(i32* %46)
  %48 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %49 = call %struct.TYPE_4__* @disk_to_dev(%struct.gendisk* %48)
  %50 = call i32 @blk_trace_remove_sysfs(%struct.TYPE_4__* %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %60 = call i32 @elv_unregister_queue(%struct.request_queue* %59)
  br label %61

61:                                               ; preds = %58, %40
  %62 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %63 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %66 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %69 = call %struct.TYPE_4__* @disk_to_dev(%struct.gendisk* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @kobject_put(i32* %70)
  br label %72

72:                                               ; preds = %61, %18, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blk_queue_registered(%struct.request_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unregister_dev(%struct.TYPE_4__*, %struct.request_queue*) #1

declare dso_local %struct.TYPE_4__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @blk_trace_remove_sysfs(%struct.TYPE_4__*) #1

declare dso_local i32 @elv_unregister_queue(%struct.request_queue*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
