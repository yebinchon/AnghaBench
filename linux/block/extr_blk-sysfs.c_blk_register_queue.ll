; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_blk_register_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-sysfs.c_blk_register_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s is registering an already registered queue\0A\00", align 1
@QUEUE_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@queue_attr_group = common dso_local global i32 0, align 4
@QUEUE_FLAG_REGISTERED = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_register_queue(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = call %struct.device* @disk_to_dev(%struct.gendisk* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %14 = icmp ne %struct.request_queue* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %146

22:                                               ; preds = %1
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = call i32 @blk_queue_registered(%struct.request_queue* %23)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = call i32 @kobject_name(i32* %26)
  %28 = call i32 @WARN_ONCE(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %30 = call i32 @blk_queue_init_done(%struct.request_queue* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @QUEUE_FLAG_INIT_DONE, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %35 = call i32 @blk_queue_flag_set(i32 %33, %struct.request_queue* %34)
  %36 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 4
  %38 = call i32 @percpu_ref_switch_to_percpu(i32* %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @blk_trace_init_sysfs(%struct.device* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %146

46:                                               ; preds = %39
  %47 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %50, i32 0, i32 3
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = call i32 @kobject_get(i32* %53)
  %55 = call i32 @kobject_add(i32* %51, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @blk_trace_remove_sysfs(%struct.device* %59)
  br label %141

61:                                               ; preds = %46
  %62 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %63 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %62, i32 0, i32 3
  %64 = call i32 @sysfs_create_group(i32* %63, i32* @queue_attr_group)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i32 @blk_trace_remove_sysfs(%struct.device* %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 3
  %72 = call i32 @kobject_del(i32* %71)
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = call i32 @kobject_put(i32* %74)
  br label %141

76:                                               ; preds = %61
  %77 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %78 = call i64 @queue_is_mq(%struct.request_queue* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %83 = call i32 @__blk_mq_register_dev(%struct.device* %81, %struct.request_queue* %82)
  %84 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %85 = call i32 @blk_mq_debugfs_register(%struct.request_queue* %84)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %88 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %87, i32 0, i32 1
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %91 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %86
  %95 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %96 = call i32 @elv_register_queue(%struct.request_queue* %95, i32 0)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %101 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %104 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %107 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %106, i32 0, i32 3
  %108 = call i32 @kobject_del(i32* %107)
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 @blk_trace_remove_sysfs(%struct.device* %109)
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = getelementptr inbounds %struct.device, %struct.device* %111, i32 0, i32 0
  %113 = call i32 @kobject_put(i32* %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %146

115:                                              ; preds = %94
  store i32 1, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %86
  %117 = load i32, i32* @QUEUE_FLAG_REGISTERED, align 4
  %118 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %119 = call i32 @blk_queue_flag_set(i32 %117, %struct.request_queue* %118)
  %120 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %121 = call i32 @wbt_enable_default(%struct.request_queue* %120)
  %122 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %123 = call i32 @blk_throtl_register_queue(%struct.request_queue* %122)
  %124 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %125 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %124, i32 0, i32 3
  %126 = load i32, i32* @KOBJ_ADD, align 4
  %127 = call i32 @kobject_uevent(i32* %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %116
  %131 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %132 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* @KOBJ_ADD, align 4
  %136 = call i32 @kobject_uevent(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %116
  %138 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %139 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %67, %58
  %142 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %143 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %99, %44, %19
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.device* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_registered(%struct.request_queue*) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @blk_queue_init_done(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @percpu_ref_switch_to_percpu(i32*) #1

declare dso_local i32 @blk_trace_init_sysfs(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kobject_add(i32*, i32, i8*, i8*) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @blk_trace_remove_sysfs(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i64 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @__blk_mq_register_dev(%struct.device*, %struct.request_queue*) #1

declare dso_local i32 @blk_mq_debugfs_register(%struct.request_queue*) #1

declare dso_local i32 @elv_register_queue(%struct.request_queue*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wbt_enable_default(%struct.request_queue*) #1

declare dso_local i32 @blk_throtl_register_queue(%struct.request_queue*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
