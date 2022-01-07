; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_rq_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_rq_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.request** }
%struct.TYPE_6__ = type { i32* }
%struct.blk_mq_alloc_data = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.blk_mq_tags = type { %struct.request** }

@BLK_MQ_REQ_INTERNAL = common dso_local global i32 0, align 4
@BLK_MQ_F_TAG_SHARED = common dso_local global i32 0, align 4
@RQF_MQ_INFLIGHT = common dso_local global i32 0, align 4
@BLK_MQ_REQ_PREEMPT = common dso_local global i32 0, align 4
@RQF_PREEMPT = common dso_local global i32 0, align 4
@RQF_IO_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.blk_mq_alloc_data*, i32, i32, i32)* @blk_mq_rq_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_alloc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.blk_mq_tags*, align 8
  %10 = alloca %struct.request*, align 8
  %11 = alloca i32, align 4
  store %struct.blk_mq_alloc_data* %0, %struct.blk_mq_alloc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %13 = call %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* %12)
  store %struct.blk_mq_tags* %13, %struct.blk_mq_tags** %9, align 8
  %14 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %9, align 8
  %15 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %14, i32 0, i32 0
  %16 = load %struct.request**, %struct.request*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.request*, %struct.request** %16, i64 %18
  %20 = load %struct.request*, %struct.request** %19, align 8
  store %struct.request* %20, %struct.request** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %22 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLK_MQ_REQ_INTERNAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.request*, %struct.request** %10, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.request*, %struct.request** %10, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %68

33:                                               ; preds = %4
  %34 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %35 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BLK_MQ_F_TAG_SHARED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @RQF_MQ_INFLIGHT, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %45 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = call i32 @atomic_inc(i32* %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.request*, %struct.request** %10, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.request*, %struct.request** %10, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  %55 = load %struct.request*, %struct.request** %10, align 8
  %56 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %57 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.request**, %struct.request*** %61, align 8
  %63 = load %struct.request*, %struct.request** %10, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.request*, %struct.request** %62, i64 %66
  store %struct.request* %55, %struct.request** %67, align 8
  br label %68

68:                                               ; preds = %49, %27
  %69 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %70 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.request*, %struct.request** %10, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 23
  store i32 %71, i32* %73, align 8
  %74 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %75 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load %struct.request*, %struct.request** %10, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 22
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %80 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.request*, %struct.request** %10, align 8
  %83 = getelementptr inbounds %struct.request, %struct.request* %82, i32 0, i32 21
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.request*, %struct.request** %10, align 8
  %86 = getelementptr inbounds %struct.request, %struct.request* %85, i32 0, i32 20
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.request*, %struct.request** %10, align 8
  %89 = getelementptr inbounds %struct.request, %struct.request* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %91 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BLK_MQ_REQ_PREEMPT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %68
  %97 = load i32, i32* @RQF_PREEMPT, align 4
  %98 = load %struct.request*, %struct.request** %10, align 8
  %99 = getelementptr inbounds %struct.request, %struct.request* %98, i32 0, i32 20
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %68
  %103 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %104 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @blk_queue_io_stat(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @RQF_IO_STAT, align 4
  %110 = load %struct.request*, %struct.request** %10, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.request*, %struct.request** %10, align 8
  %116 = getelementptr inbounds %struct.request, %struct.request* %115, i32 0, i32 19
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.request*, %struct.request** %10, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 18
  %120 = call i32 @INIT_HLIST_NODE(i32* %119)
  %121 = load %struct.request*, %struct.request** %10, align 8
  %122 = getelementptr inbounds %struct.request, %struct.request* %121, i32 0, i32 17
  %123 = call i32 @RB_CLEAR_NODE(i32* %122)
  %124 = load %struct.request*, %struct.request** %10, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 16
  store i32* null, i32** %125, align 8
  %126 = load %struct.request*, %struct.request** %10, align 8
  %127 = getelementptr inbounds %struct.request, %struct.request* %126, i32 0, i32 15
  store i32* null, i32** %127, align 8
  %128 = load %struct.request*, %struct.request** %10, align 8
  %129 = call i64 @blk_mq_need_time_stamp(%struct.request* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %114
  %132 = call i64 (...) @ktime_get_ns()
  %133 = load %struct.request*, %struct.request** %10, align 8
  %134 = getelementptr inbounds %struct.request, %struct.request* %133, i32 0, i32 13
  store i64 %132, i64* %134, align 8
  br label %138

135:                                              ; preds = %114
  %136 = load %struct.request*, %struct.request** %10, align 8
  %137 = getelementptr inbounds %struct.request, %struct.request* %136, i32 0, i32 13
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %135, %131
  %139 = load %struct.request*, %struct.request** %10, align 8
  %140 = getelementptr inbounds %struct.request, %struct.request* %139, i32 0, i32 12
  store i64 0, i64* %140, align 8
  %141 = load %struct.request*, %struct.request** %10, align 8
  %142 = getelementptr inbounds %struct.request, %struct.request* %141, i32 0, i32 11
  store i64 0, i64* %142, align 8
  %143 = load %struct.request*, %struct.request** %10, align 8
  %144 = getelementptr inbounds %struct.request, %struct.request* %143, i32 0, i32 10
  store i64 0, i64* %144, align 8
  %145 = load %struct.request*, %struct.request** %10, align 8
  %146 = getelementptr inbounds %struct.request, %struct.request* %145, i32 0, i32 8
  store i64 0, i64* %146, align 8
  %147 = load %struct.request*, %struct.request** %10, align 8
  %148 = getelementptr inbounds %struct.request, %struct.request* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @WRITE_ONCE(i32 %149, i32 0)
  %151 = load %struct.request*, %struct.request** %10, align 8
  %152 = getelementptr inbounds %struct.request, %struct.request* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load %struct.request*, %struct.request** %10, align 8
  %154 = getelementptr inbounds %struct.request, %struct.request* %153, i32 0, i32 5
  store i32* null, i32** %154, align 8
  %155 = load %struct.request*, %struct.request** %10, align 8
  %156 = getelementptr inbounds %struct.request, %struct.request* %155, i32 0, i32 4
  store i32* null, i32** %156, align 8
  %157 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %5, align 8
  %158 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i64 @op_is_sync(i32 %162)
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.request*, %struct.request** %10, align 8
  %168 = getelementptr inbounds %struct.request, %struct.request* %167, i32 0, i32 3
  %169 = call i32 @refcount_set(i32* %168, i32 1)
  %170 = load %struct.request*, %struct.request** %10, align 8
  ret %struct.request* %170
}

declare dso_local %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @blk_queue_io_stat(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i64 @blk_mq_need_time_stamp(%struct.request*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @op_is_sync(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
