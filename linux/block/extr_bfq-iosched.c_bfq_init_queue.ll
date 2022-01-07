; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, %struct.elevator_queue* }
%struct.elevator_queue = type { i32, %struct.bfq_data* }
%struct.bfq_data = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.request_queue*, i64, i8*, i8*, i64, i8*, i8*, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.elevator_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BFQ_DEFAULT_QUEUE_IOPRIO = common dso_local global i32 0, align 4
@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@bfq_idle_slice_timer = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@bfq_default_max_budget = common dso_local global i32 0, align 4
@bfq_fifo_expire = common dso_local global i8** null, align 8
@bfq_back_max = common dso_local global i32 0, align 4
@bfq_back_penalty = common dso_local global i32 0, align 4
@bfq_slice_idle = common dso_local global i32 0, align 4
@bfq_timeout = common dso_local global i32 0, align 4
@ref_rate = common dso_local global i32* null, align 8
@ref_wr_duration = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.elevator_type*)* @bfq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_init_queue(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %10 = call %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %8, %struct.elevator_type* %9)
  store %struct.elevator_queue* %10, %struct.elevator_queue** %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %12 = icmp ne %struct.elevator_queue* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %234

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.bfq_data* @kzalloc_node(i32 192, i32 %17, i32 %20)
  store %struct.bfq_data* %21, %struct.bfq_data** %6, align 8
  %22 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %23 = icmp ne %struct.bfq_data* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %26 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %25, i32 0, i32 0
  %27 = call i32 @kobject_put(i32* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %234

30:                                               ; preds = %16
  %31 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %32 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %33 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %32, i32 0, i32 1
  store %struct.bfq_data* %31, %struct.bfq_data** %33, align 8
  %34 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 2
  store %struct.elevator_queue* %37, %struct.elevator_queue** %39, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %44 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %45 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %44, i32 0, i32 10
  %46 = call i32 @bfq_init_bfqq(%struct.bfq_data* %43, %struct.TYPE_7__* %45, i32* null, i32 1, i32 0)
  %47 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %48 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @BFQ_DEFAULT_QUEUE_IOPRIO, align 4
  %53 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %54 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %57 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %58 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %61 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @bfq_ioprio_to_weight(i32 %63)
  %65 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %66 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %70 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %69, i32 0, i32 10
  %71 = call i32 @bfq_clear_bfqq_just_created(%struct.TYPE_7__* %70)
  %72 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %73 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %72, i32 0, i32 10
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %77 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %78 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %77, i32 0, i32 12
  store %struct.request_queue* %76, %struct.request_queue** %78, align 8
  %79 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %80 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %79, i32 0, i32 31
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %83 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %82, i32 0, i32 30
  %84 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %85 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %86 = call i32 @hrtimer_init(%struct.TYPE_5__* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @bfq_idle_slice_timer, align 4
  %88 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %89 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %88, i32 0, i32 30
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @RB_ROOT_CACHED, align 4
  %92 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %93 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %92, i32 0, i32 29
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %95 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %94, i32 0, i32 28
  store i64 0, i64* %95, align 8
  %96 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %97 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %96, i32 0, i32 27
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %100 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %99, i32 0, i32 26
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %103 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %102, i32 0, i32 25
  %104 = call i32 @INIT_HLIST_HEAD(i32* %103)
  %105 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %106 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %108 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %107, i32 0, i32 12
  %109 = load %struct.request_queue*, %struct.request_queue** %108, align 8
  %110 = call i64 @blk_queue_nonrot(%struct.request_queue* %109)
  %111 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %112 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @bfq_default_max_budget, align 4
  %114 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %115 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %114, i32 0, i32 24
  store i32 %113, i32* %115, align 8
  %116 = load i8**, i8*** @bfq_fifo_expire, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %120 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %119, i32 0, i32 23
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %118, i8** %122, align 8
  %123 = load i8**, i8*** @bfq_fifo_expire, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %127 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %126, i32 0, i32 23
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  store i8* %125, i8** %129, align 8
  %130 = load i32, i32* @bfq_back_max, align 4
  %131 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %132 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %131, i32 0, i32 22
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @bfq_back_penalty, align 4
  %134 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %135 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %134, i32 0, i32 21
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @bfq_slice_idle, align 4
  %137 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %138 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %137, i32 0, i32 20
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @bfq_timeout, align 4
  %140 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %141 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %140, i32 0, i32 19
  store i32 %139, i32* %141, align 8
  %142 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %143 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %142, i32 0, i32 2
  store i32 120, i32* %143, align 8
  %144 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %145 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %144, i32 0, i32 3
  store i32 8, i32* %145, align 4
  %146 = call i8* @msecs_to_jiffies(i32 180)
  %147 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %148 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %147, i32 0, i32 18
  store i8* %146, i8** %148, align 8
  %149 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %150 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %149, i32 0, i32 4
  store i32 1, i32* %150, align 8
  %151 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %152 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %151, i32 0, i32 5
  store i32 30, i32* %152, align 4
  %153 = call i8* @msecs_to_jiffies(i32 300)
  %154 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %155 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %154, i32 0, i32 17
  store i8* %153, i8** %155, align 8
  %156 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %157 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %156, i32 0, i32 16
  store i64 0, i64* %157, align 8
  %158 = call i8* @msecs_to_jiffies(i32 2000)
  %159 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %160 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %159, i32 0, i32 15
  store i8* %158, i8** %160, align 8
  %161 = call i8* @msecs_to_jiffies(i32 500)
  %162 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %163 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %162, i32 0, i32 14
  store i8* %161, i8** %163, align 8
  %164 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %165 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %164, i32 0, i32 6
  store i32 7000, i32* %165, align 8
  %166 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %167 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %166, i32 0, i32 13
  store i64 0, i64* %167, align 8
  %168 = load i32*, i32** @ref_rate, align 8
  %169 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %170 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %169, i32 0, i32 12
  %171 = load %struct.request_queue*, %struct.request_queue** %170, align 8
  %172 = call i64 @blk_queue_nonrot(%struct.request_queue* %171)
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** @ref_wr_duration, align 8
  %176 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %177 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %176, i32 0, i32 12
  %178 = load %struct.request_queue*, %struct.request_queue** %177, align 8
  %179 = call i64 @blk_queue_nonrot(%struct.request_queue* %178)
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %174, %181
  %183 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %184 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** @ref_rate, align 8
  %186 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %187 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %186, i32 0, i32 12
  %188 = load %struct.request_queue*, %struct.request_queue** %187, align 8
  %189 = call i64 @blk_queue_nonrot(%struct.request_queue* %188)
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %191, 2
  %193 = sdiv i32 %192, 3
  %194 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %195 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  %196 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %197 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %196, i32 0, i32 11
  %198 = call i32 @spin_lock_init(i32* %197)
  %199 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %200 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %201 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @bfq_create_group_hierarchy(%struct.bfq_data* %199, i32 %202)
  %204 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %205 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %204, i32 0, i32 9
  store i32 %203, i32* %205, align 4
  %206 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %207 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %30
  br label %226

211:                                              ; preds = %30
  %212 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %213 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %216 = call i32 @bfq_init_root_group(i32 %214, %struct.bfq_data* %215)
  %217 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %218 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %217, i32 0, i32 10
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %221 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @bfq_init_entity(%struct.TYPE_6__* %219, i32 %222)
  %224 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %225 = call i32 @wbt_disable_default(%struct.request_queue* %224)
  store i32 0, i32* %3, align 4
  br label %234

226:                                              ; preds = %210
  %227 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %228 = call i32 @kfree(%struct.bfq_data* %227)
  %229 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %230 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %229, i32 0, i32 0
  %231 = call i32 @kobject_put(i32* %230)
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %226, %211, %24, %13
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local %struct.bfq_data* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bfq_init_bfqq(%struct.bfq_data*, %struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @bfq_ioprio_to_weight(i32) #1

declare dso_local i32 @bfq_clear_bfqq_just_created(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i64 @blk_queue_nonrot(%struct.request_queue*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bfq_create_group_hierarchy(%struct.bfq_data*, i32) #1

declare dso_local i32 @bfq_init_root_group(i32, %struct.bfq_data*) #1

declare dso_local i32 @bfq_init_entity(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wbt_disable_default(%struct.request_queue*) #1

declare dso_local i32 @kfree(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
