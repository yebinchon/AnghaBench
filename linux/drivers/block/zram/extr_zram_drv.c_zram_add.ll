; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.request_queue*, %struct.zram*, i32*, i32 }
%struct.request_queue = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.zram* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zram_index_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error allocating disk queue for device %d\0A\00", align 1
@zram_make_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error allocating disk structure for device %d\0A\00", align 1
@zram_major = common dso_local global i32 0, align 4
@zram_devops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"zram%d\00", align 1
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ZRAM_LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@BDI_CAP_SYNCHRONOUS_IO = common dso_local global i32 0, align 4
@zram_disk_attr_groups = common dso_local global i32 0, align 4
@default_compressor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Added device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @zram_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_add() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.zram*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.zram* @kzalloc(i32 24, i32 %6)
  store %struct.zram* %7, %struct.zram** %2, align 8
  %8 = load %struct.zram*, %struct.zram** %2, align 8
  %9 = icmp ne %struct.zram* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %211

13:                                               ; preds = %0
  %14 = load %struct.zram*, %struct.zram** %2, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @idr_alloc(i32* @zram_index_idr, %struct.zram* %14, i32 0, i32 0, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %207

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.zram*, %struct.zram** %2, align 8
  %23 = getelementptr inbounds %struct.zram, %struct.zram* %22, i32 0, i32 3
  %24 = call i32 @init_rwsem(i32* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.request_queue* @blk_alloc_queue(i32 %25)
  store %struct.request_queue* %26, %struct.request_queue** %3, align 8
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = icmp ne %struct.request_queue* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %204

34:                                               ; preds = %20
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = load i32, i32* @zram_make_request, align 4
  %37 = call i32 @blk_queue_make_request(%struct.request_queue* %35, i32 %36)
  %38 = call %struct.TYPE_8__* @alloc_disk(i32 1)
  %39 = load %struct.zram*, %struct.zram** %2, align 8
  %40 = getelementptr inbounds %struct.zram, %struct.zram* %39, i32 0, i32 0
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load %struct.zram*, %struct.zram** %2, align 8
  %42 = getelementptr inbounds %struct.zram, %struct.zram* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %201

50:                                               ; preds = %34
  %51 = load i32, i32* @zram_major, align 4
  %52 = load %struct.zram*, %struct.zram** %2, align 8
  %53 = getelementptr inbounds %struct.zram, %struct.zram* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.zram*, %struct.zram** %2, align 8
  %58 = getelementptr inbounds %struct.zram, %struct.zram* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.zram*, %struct.zram** %2, align 8
  %62 = getelementptr inbounds %struct.zram, %struct.zram* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  store i32* @zram_devops, i32** %64, align 8
  %65 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %66 = load %struct.zram*, %struct.zram** %2, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store %struct.request_queue* %65, %struct.request_queue** %69, align 8
  %70 = load %struct.zram*, %struct.zram** %2, align 8
  %71 = load %struct.zram*, %struct.zram** %2, align 8
  %72 = getelementptr inbounds %struct.zram, %struct.zram* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load %struct.request_queue*, %struct.request_queue** %74, align 8
  %76 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %75, i32 0, i32 2
  store %struct.zram* %70, %struct.zram** %76, align 8
  %77 = load %struct.zram*, %struct.zram** %2, align 8
  %78 = load %struct.zram*, %struct.zram** %2, align 8
  %79 = getelementptr inbounds %struct.zram, %struct.zram* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store %struct.zram* %77, %struct.zram** %81, align 8
  %82 = load %struct.zram*, %struct.zram** %2, align 8
  %83 = getelementptr inbounds %struct.zram, %struct.zram* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @snprintf(i32 %86, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.zram*, %struct.zram** %2, align 8
  %90 = getelementptr inbounds %struct.zram, %struct.zram* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @set_capacity(%struct.TYPE_8__* %91, i32 0)
  %93 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %94 = load %struct.zram*, %struct.zram** %2, align 8
  %95 = getelementptr inbounds %struct.zram, %struct.zram* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load %struct.request_queue*, %struct.request_queue** %97, align 8
  %99 = call i32 @blk_queue_flag_set(i32 %93, %struct.request_queue* %98)
  %100 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %101 = load %struct.zram*, %struct.zram** %2, align 8
  %102 = getelementptr inbounds %struct.zram, %struct.zram* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.request_queue*, %struct.request_queue** %104, align 8
  %106 = call i32 @blk_queue_flag_clear(i32 %100, %struct.request_queue* %105)
  %107 = load %struct.zram*, %struct.zram** %2, align 8
  %108 = getelementptr inbounds %struct.zram, %struct.zram* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load %struct.request_queue*, %struct.request_queue** %110, align 8
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = call i32 @blk_queue_physical_block_size(%struct.request_queue* %111, i64 %112)
  %114 = load %struct.zram*, %struct.zram** %2, align 8
  %115 = getelementptr inbounds %struct.zram, %struct.zram* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load %struct.request_queue*, %struct.request_queue** %117, align 8
  %119 = load i64, i64* @ZRAM_LOGICAL_BLOCK_SIZE, align 8
  %120 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %118, i64 %119)
  %121 = load %struct.zram*, %struct.zram** %2, align 8
  %122 = getelementptr inbounds %struct.zram, %struct.zram* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.request_queue*, %struct.request_queue** %124, align 8
  %126 = load i64, i64* @PAGE_SIZE, align 8
  %127 = call i32 @blk_queue_io_min(%struct.request_queue* %125, i64 %126)
  %128 = load %struct.zram*, %struct.zram** %2, align 8
  %129 = getelementptr inbounds %struct.zram, %struct.zram* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load %struct.request_queue*, %struct.request_queue** %131, align 8
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = call i32 @blk_queue_io_opt(%struct.request_queue* %132, i64 %133)
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = load %struct.zram*, %struct.zram** %2, align 8
  %137 = getelementptr inbounds %struct.zram, %struct.zram* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load %struct.request_queue*, %struct.request_queue** %139, align 8
  %141 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i64 %135, i64* %142, align 8
  %143 = load %struct.zram*, %struct.zram** %2, align 8
  %144 = getelementptr inbounds %struct.zram, %struct.zram* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load %struct.request_queue*, %struct.request_queue** %146, align 8
  %148 = load i32, i32* @UINT_MAX, align 4
  %149 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %147, i32 %148)
  %150 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %151 = load %struct.zram*, %struct.zram** %2, align 8
  %152 = getelementptr inbounds %struct.zram, %struct.zram* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load %struct.request_queue*, %struct.request_queue** %154, align 8
  %156 = call i32 @blk_queue_flag_set(i32 %150, %struct.request_queue* %155)
  %157 = load i64, i64* @ZRAM_LOGICAL_BLOCK_SIZE, align 8
  %158 = load i64, i64* @PAGE_SIZE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %50
  %161 = load %struct.zram*, %struct.zram** %2, align 8
  %162 = getelementptr inbounds %struct.zram, %struct.zram* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load %struct.request_queue*, %struct.request_queue** %164, align 8
  %166 = load i32, i32* @UINT_MAX, align 4
  %167 = call i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue* %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %50
  %169 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %170 = load i32, i32* @BDI_CAP_SYNCHRONOUS_IO, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.zram*, %struct.zram** %2, align 8
  %173 = getelementptr inbounds %struct.zram, %struct.zram* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load %struct.request_queue*, %struct.request_queue** %175, align 8
  %177 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %171
  store i32 %181, i32* %179, align 4
  %182 = load %struct.zram*, %struct.zram** %2, align 8
  %183 = getelementptr inbounds %struct.zram, %struct.zram* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* @zram_disk_attr_groups, align 4
  %186 = call i32 @device_add_disk(i32* null, %struct.TYPE_8__* %184, i32 %185)
  %187 = load %struct.zram*, %struct.zram** %2, align 8
  %188 = getelementptr inbounds %struct.zram, %struct.zram* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @default_compressor, align 4
  %191 = call i32 @strlcpy(i32 %189, i32 %190, i32 4)
  %192 = load %struct.zram*, %struct.zram** %2, align 8
  %193 = call i32 @zram_debugfs_register(%struct.zram* %192)
  %194 = load %struct.zram*, %struct.zram** %2, align 8
  %195 = getelementptr inbounds %struct.zram, %struct.zram* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %1, align 4
  br label %211

201:                                              ; preds = %45
  %202 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %203 = call i32 @blk_cleanup_queue(%struct.request_queue* %202)
  br label %204

204:                                              ; preds = %201, %29
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @idr_remove(i32* @zram_index_idr, i32 %205)
  br label %207

207:                                              ; preds = %204, %19
  %208 = load %struct.zram*, %struct.zram** %2, align 8
  %209 = call i32 @kfree(%struct.zram* %208)
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %1, align 4
  br label %211

211:                                              ; preds = %207, %168, %10
  %212 = load i32, i32* %1, align 4
  ret i32 %212
}

declare dso_local %struct.zram* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.zram*, i32, i32, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local %struct.request_queue* @blk_alloc_queue(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local %struct.TYPE_8__* @alloc_disk(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_io_min(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_io_opt(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @device_add_disk(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @zram_debugfs_register(%struct.zram*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.zram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
