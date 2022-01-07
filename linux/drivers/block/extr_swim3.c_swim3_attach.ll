; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { i32 }
%struct.gendisk = type { i64, %struct.TYPE_6__*, i32, i32, i32, %struct.floppy_state*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.floppy_state* }
%struct.macio_dev = type { i32 }
%struct.of_device_id = type { i32 }

@floppy_count = common dso_local global i64 0, align 8
@MAX_FLOPPIES = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@FLOPPY_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@floppy_states = common dso_local global %struct.floppy_state* null, align 8
@swim3_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@floppy_fops = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fd%d\00", align 1
@disks = common dso_local global %struct.gendisk** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*, %struct.of_device_id*)* @swim3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swim3_attach(%struct.macio_dev* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macio_dev*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.floppy_state*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  store %struct.macio_dev* %0, %struct.macio_dev** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  %9 = load i64, i64* @floppy_count, align 8
  %10 = load i64, i64* @MAX_FLOPPIES, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %129

15:                                               ; preds = %2
  %16 = load i64, i64* @floppy_count, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @FLOPPY_MAJOR, align 4
  %20 = call i32 @register_blkdev(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %129

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %27, %struct.gendisk** %7, align 8
  %28 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %29 = icmp eq %struct.gendisk* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %121

33:                                               ; preds = %26
  %34 = load %struct.floppy_state*, %struct.floppy_state** @floppy_states, align 8
  %35 = load i64, i64* @floppy_count, align 8
  %36 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %34, i64 %35
  store %struct.floppy_state* %36, %struct.floppy_state** %6, align 8
  %37 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %38 = call i32 @memset(%struct.floppy_state* %37, i32 0, i32 4)
  %39 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %40 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %39, i32 0, i32 0
  %41 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %42 = call %struct.TYPE_6__* @blk_mq_init_sq_queue(i32* %40, i32* @swim3_mq_ops, i32 2, i32 %41)
  %43 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %44 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %43, i32 0, i32 1
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i64 @IS_ERR(%struct.TYPE_6__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %52 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.TYPE_6__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %56 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %55, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %56, align 8
  br label %118

57:                                               ; preds = %33
  %58 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %59 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %62 = call i32 @blk_queue_bounce_limit(%struct.TYPE_6__* %60, i32 %61)
  %63 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %64 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store %struct.floppy_state* %63, %struct.floppy_state** %67, align 8
  %68 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %69 = load i64, i64* @floppy_count, align 8
  %70 = call i32 @swim3_add_device(%struct.macio_dev* %68, i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %108

74:                                               ; preds = %57
  %75 = load i32, i32* @FLOPPY_MAJOR, align 4
  %76 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* @floppy_count, align 8
  %79 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %80 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 6
  store i32* @floppy_fops, i32** %82, align 8
  %83 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %84 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %85 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %84, i32 0, i32 5
  store %struct.floppy_state* %83, %struct.floppy_state** %85, align 8
  %86 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %87 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %88 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %90 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %91 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %95 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @floppy_count, align 8
  %98 = call i32 @sprintf(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  %99 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %100 = call i32 @set_capacity(%struct.gendisk* %99, i32 2880)
  %101 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %102 = call i32 @add_disk(%struct.gendisk* %101)
  %103 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %104 = load %struct.gendisk**, %struct.gendisk*** @disks, align 8
  %105 = load i64, i64* @floppy_count, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* @floppy_count, align 8
  %107 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %104, i64 %105
  store %struct.gendisk* %103, %struct.gendisk** %107, align 8
  store i32 0, i32* %3, align 4
  br label %129

108:                                              ; preds = %73
  %109 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %110 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @blk_cleanup_queue(%struct.TYPE_6__* %111)
  %113 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %114 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %113, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %114, align 8
  %115 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %116 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %115, i32 0, i32 0
  %117 = call i32 @blk_mq_free_tag_set(i32* %116)
  br label %118

118:                                              ; preds = %108, %50
  %119 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %120 = call i32 @put_disk(%struct.gendisk* %119)
  br label %121

121:                                              ; preds = %118, %30
  %122 = load i64, i64* @floppy_count, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @FLOPPY_MAJOR, align 4
  %126 = call i32 @unregister_blkdev(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %74, %23, %12
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @register_blkdev(i32, i8*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @memset(%struct.floppy_state*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @swim3_add_device(%struct.macio_dev*, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @unregister_blkdev(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
