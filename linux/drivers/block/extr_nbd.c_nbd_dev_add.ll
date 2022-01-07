; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32*, %struct.gendisk* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.nbd_device*, i32, i32* }
%struct.gendisk = type { i32, i32, %struct.nbd_device*, i32*, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@part_shift = common dso_local global i32 0, align 4
@nbd_index_idr = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@nbd_mq_ops = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@NBD_MAJOR = common dso_local global i32 0, align 4
@nbd_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nbd%d\00", align 1
@nbd_total_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nbd_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_dev_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nbd_device* @kzalloc(i32 80, i32 %10)
  store %struct.nbd_device* %11, %struct.nbd_device** %4, align 8
  %12 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %13 = icmp ne %struct.nbd_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %199

15:                                               ; preds = %1
  %16 = load i32, i32* @part_shift, align 4
  %17 = shl i32 1, %16
  %18 = call %struct.gendisk* @alloc_disk(i32 %17)
  store %struct.gendisk* %18, %struct.gendisk** %5, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %20 = icmp ne %struct.gendisk* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %196

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @idr_alloc(i32* @nbd_index_idr, %struct.nbd_device* %26, i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %25
  br label %49

40:                                               ; preds = %22
  %41 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @idr_alloc(i32* @nbd_index_idr, %struct.nbd_device* %41, i32 0, i32 0, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %193

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %56 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %58 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %59 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %58, i32 0, i32 7
  store %struct.gendisk* %57, %struct.gendisk** %59, align 8
  %60 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %61 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  store i32* @nbd_mq_ops, i32** %62, align 8
  %63 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %64 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %67 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 128, i32* %68, align 4
  %69 = load i32, i32* @NUMA_NO_NODE, align 4
  %70 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %71 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 8
  %73 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %74 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 4, i32* %75, align 8
  %76 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %77 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %80 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %83 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %84 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store %struct.nbd_device* %82, %struct.nbd_device** %85, align 8
  %86 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %87 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %86, i32 0, i32 6
  store i32* null, i32** %87, align 8
  %88 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %89 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %88, i32 0, i32 1
  %90 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_6__* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %53
  br label %190

94:                                               ; preds = %53
  %95 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %96 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %95, i32 0, i32 1
  %97 = call %struct.request_queue* @blk_mq_init_queue(%struct.TYPE_6__* %96)
  store %struct.request_queue* %97, %struct.request_queue** %6, align 8
  %98 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %99 = call i64 @IS_ERR(%struct.request_queue* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %103 = call i32 @PTR_ERR(%struct.request_queue* %102)
  store i32 %103, i32* %7, align 4
  br label %186

104:                                              ; preds = %94
  %105 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %106 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %107 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %106, i32 0, i32 5
  store %struct.request_queue* %105, %struct.request_queue** %107, align 8
  %108 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %109 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %110 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %109, i32 0, i32 5
  %111 = load %struct.request_queue*, %struct.request_queue** %110, align 8
  %112 = call i32 @blk_queue_flag_set(i32 %108, %struct.request_queue* %111)
  %113 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %114 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %115 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %114, i32 0, i32 5
  %116 = load %struct.request_queue*, %struct.request_queue** %115, align 8
  %117 = call i32 @blk_queue_flag_clear(i32 %113, %struct.request_queue* %116)
  %118 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %119 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %118, i32 0, i32 5
  %120 = load %struct.request_queue*, %struct.request_queue** %119, align 8
  %121 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %124 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %123, i32 0, i32 5
  %125 = load %struct.request_queue*, %struct.request_queue** %124, align 8
  %126 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %129 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %128, i32 0, i32 5
  %130 = load %struct.request_queue*, %struct.request_queue** %129, align 8
  %131 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %130, i32 0)
  %132 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %133 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %132, i32 0, i32 5
  %134 = load %struct.request_queue*, %struct.request_queue** %133, align 8
  %135 = load i32, i32* @UINT_MAX, align 4
  %136 = call i32 @blk_queue_max_segment_size(%struct.request_queue* %134, i32 %135)
  %137 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %138 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %137, i32 0, i32 5
  %139 = load %struct.request_queue*, %struct.request_queue** %138, align 8
  %140 = load i32, i32* @USHRT_MAX, align 4
  %141 = call i32 @blk_queue_max_segments(%struct.request_queue* %139, i32 %140)
  %142 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %143 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %142, i32 0, i32 5
  %144 = load %struct.request_queue*, %struct.request_queue** %143, align 8
  %145 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %144, i32 65536)
  %146 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %147 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %146, i32 0, i32 5
  %148 = load %struct.request_queue*, %struct.request_queue** %147, align 8
  %149 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 256, i32* %150, align 8
  %151 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %152 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %151, i32 0, i32 5
  %153 = call i32 @mutex_init(i32* %152)
  %154 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %155 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %154, i32 0, i32 4
  %156 = call i32 @refcount_set(i32* %155, i32 0)
  %157 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %158 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %157, i32 0, i32 3
  %159 = call i32 @refcount_set(i32* %158, i32 1)
  %160 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %161 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %160, i32 0, i32 2
  %162 = call i32 @INIT_LIST_HEAD(i32* %161)
  %163 = load i32, i32* @NBD_MAJOR, align 4
  %164 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %165 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @part_shift, align 4
  %168 = shl i32 %166, %167
  %169 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %170 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %172 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %171, i32 0, i32 3
  store i32* @nbd_fops, i32** %172, align 8
  %173 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %174 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %175 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %174, i32 0, i32 2
  store %struct.nbd_device* %173, %struct.nbd_device** %175, align 8
  %176 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %177 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @sprintf(i32 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %182 = call i32 @add_disk(%struct.gendisk* %181)
  %183 = load i32, i32* @nbd_total_devices, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @nbd_total_devices, align 4
  %185 = load i32, i32* %3, align 4
  store i32 %185, i32* %2, align 4
  br label %201

186:                                              ; preds = %101
  %187 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %188 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %187, i32 0, i32 1
  %189 = call i32 @blk_mq_free_tag_set(%struct.TYPE_6__* %188)
  br label %190

190:                                              ; preds = %186, %93
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @idr_remove(i32* @nbd_index_idr, i32 %191)
  br label %193

193:                                              ; preds = %190, %52
  %194 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %195 = call i32 @put_disk(%struct.gendisk* %194)
  br label %196

196:                                              ; preds = %193, %21
  %197 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %198 = call i32 @kfree(%struct.nbd_device* %197)
  br label %199

199:                                              ; preds = %196, %14
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %104
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.nbd_device* @kzalloc(i32, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.nbd_device*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_6__*) #1

declare dso_local %struct.request_queue* @blk_mq_init_queue(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_6__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
