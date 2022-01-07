; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_8__*, i32*, i32, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MTIP_PF_SVC_THD_STOP_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@MTIP_QUIESCE_IO_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device %s surprise removal\0A\00", align 1
@mtip_no_dev_cleanup = common dso_local global i32 0, align 4
@rssd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_remove(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = call i32 @mtip_hw_debugfs_exit(%struct.driver_data* %4)
  %6 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @MTIP_PF_SVC_THD_STOP_BIT, align 4
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 7
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = call i32 @set_bit(i32 %11, i32* %15)
  %17 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 7
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call i32 @wake_up_interruptible(i32* %20)
  %22 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kthread_stop(i64 %24)
  br label %26

26:                                               ; preds = %10, %1
  %27 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %28 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 4
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %34 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call %struct.TYPE_10__* @disk_to_dev(%struct.TYPE_8__* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call %struct.kobject* @kobject_get(i32* %37)
  store %struct.kobject* %38, %struct.kobject** %3, align 8
  %39 = load %struct.kobject*, %struct.kobject** %3, align 8
  %40 = icmp ne %struct.kobject* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %43 = load %struct.kobject*, %struct.kobject** %3, align 8
  %44 = call i32 @mtip_hw_sysfs_exit(%struct.driver_data* %42, %struct.kobject* %43)
  %45 = load %struct.kobject*, %struct.kobject** %3, align 8
  %46 = call i32 @kobject_put(%struct.kobject* %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %50 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %55 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %54, i32 0, i32 7
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* @MTIP_QUIESCE_IO_TIMEOUT_MS, align 4
  %58 = call i32 @mtip_quiesce_io(%struct.TYPE_9__* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %62 = call i32 @mtip_standby_drive(%struct.driver_data* %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %75

64:                                               ; preds = %48
  %65 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %66 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %65, i32 0, i32 6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %70 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %64, %63
  %76 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %77 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @blk_freeze_queue_start(i32* %78)
  %80 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %81 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @blk_mq_quiesce_queue(i32* %82)
  %84 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %85 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %84, i32 0, i32 3
  %86 = load i32, i32* @mtip_no_dev_cleanup, align 4
  %87 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %88 = call i32 @blk_mq_tagset_busy_iter(i32* %85, i32 %86, %struct.driver_data* %87)
  %89 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %90 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @blk_mq_unquiesce_queue(i32* %91)
  %93 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %94 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %75
  %98 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %99 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @bdput(i32* %100)
  %102 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %103 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %102, i32 0, i32 5
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %97, %75
  %105 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %106 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %109, label %142

109:                                              ; preds = %104
  %110 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %111 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %112 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %111, i32 0, i32 4
  %113 = call i64 @test_bit(i32 %110, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %117 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = call i32 @del_gendisk(%struct.TYPE_8__* %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %122 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %129 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @blk_cleanup_queue(i32* %130)
  %132 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %133 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %132, i32 0, i32 3
  %134 = call i32 @blk_mq_free_tag_set(i32* %133)
  %135 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %136 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %135, i32 0, i32 2
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %127, %120
  %138 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %139 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = call i32 @put_disk(%struct.TYPE_8__* %140)
  br label %142

142:                                              ; preds = %137, %104
  %143 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %144 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %143, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %144, align 8
  %145 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %146 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ida_free(i32* @rssd_index_ida, i32 %147)
  %149 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %150 = call i32 @mtip_hw_exit(%struct.driver_data* %149)
  ret i32 0
}

declare dso_local i32 @mtip_hw_debugfs_exit(%struct.driver_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local %struct.TYPE_10__* @disk_to_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @mtip_hw_sysfs_exit(%struct.driver_data*, %struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @mtip_quiesce_io(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtip_standby_drive(%struct.driver_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @blk_freeze_queue_start(i32*) #1

declare dso_local i32 @blk_mq_quiesce_queue(i32*) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, %struct.driver_data*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32*) #1

declare dso_local i32 @bdput(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_8__*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_8__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @mtip_hw_exit(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
