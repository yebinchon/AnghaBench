; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_alloc_queue_node.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_alloc_queue_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@blk_requestq_cachep = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@blk_queue_ida = common dso_local global i32 0, align 4
@BIO_POOL_SIZE = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@VM_READAHEAD_PAGES = common dso_local global i32 0, align 4
@BDI_CAP_CGROUP_WRITEBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@laptop_mode_timer_fn = common dso_local global i32 0, align 4
@blk_rq_timed_out_timer = common dso_local global i32 0, align 4
@blk_timeout_work = common dso_local global i32 0, align 4
@blk_queue_ktype = common dso_local global i32 0, align 4
@blk_queue_usage_counter_release = common dso_local global i32 0, align 4
@PERCPU_REF_INIT_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @blk_alloc_queue_node(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @blk_requestq_cachep, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.request_queue* @kmem_cache_alloc_node(i32 %8, i32 %11, i32 %12)
  store %struct.request_queue* %13, %struct.request_queue** %6, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %15 = icmp ne %struct.request_queue* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.request_queue* null, %struct.request_queue** %3, align 8
  br label %153

17:                                               ; preds = %2
  %18 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 17
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ida_simple_get(i32* @blk_queue_ida, i32 0, i32 0, i32 %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %149

29:                                               ; preds = %17
  %30 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 2
  %32 = load i32, i32* @BIO_POOL_SIZE, align 4
  %33 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %34 = call i32 @bioset_init(i32* %31, i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %144

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_3__* @bdi_alloc_node(i32 %39, i32 %40)
  %42 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 3
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %140

49:                                               ; preds = %38
  %50 = call i32 (...) @blk_alloc_queue_stats()
  %51 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %135

58:                                               ; preds = %49
  %59 = load i32, i32* @VM_READAHEAD_PAGES, align 4
  %60 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* @BDI_CAP_CGROUP_WRITEBACK, align 4
  %65 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %66 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %70 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %75 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %77 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* @laptop_mode_timer_fn, align 4
  %81 = call i32 @timer_setup(i32* %79, i32 %80, i32 0)
  %82 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %83 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %82, i32 0, i32 16
  %84 = load i32, i32* @blk_rq_timed_out_timer, align 4
  %85 = call i32 @timer_setup(i32* %83, i32 %84, i32 0)
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %86, i32 0, i32 15
  %88 = load i32, i32* @blk_timeout_work, align 4
  %89 = call i32 @INIT_WORK(i32* %87, i32 %88)
  %90 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %91 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %90, i32 0, i32 14
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %94 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %93, i32 0, i32 12
  %95 = call i32 @kobject_init(i32* %94, i32* @blk_queue_ktype)
  %96 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %97 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %96, i32 0, i32 10
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %100 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %99, i32 0, i32 9
  %101 = call i32 @mutex_init(i32* %100)
  %102 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %103 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %102, i32 0, i32 8
  %104 = call i32 @spin_lock_init(i32* %103)
  %105 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %106 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %105, i32 0, i32 7
  %107 = call i32 @init_waitqueue_head(i32* %106)
  %108 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %109 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %108, i32 0, i32 6
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %112 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %111, i32 0, i32 5
  %113 = load i32, i32* @blk_queue_usage_counter_release, align 4
  %114 = load i32, i32* @PERCPU_REF_INIT_ATOMIC, align 4
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i64 @percpu_ref_init(i32* %112, i32 %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %58
  br label %130

119:                                              ; preds = %58
  %120 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %121 = call i64 @blkcg_init_queue(%struct.request_queue* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %126

124:                                              ; preds = %119
  %125 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %125, %struct.request_queue** %3, align 8
  br label %153

126:                                              ; preds = %123
  %127 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %128 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %127, i32 0, i32 5
  %129 = call i32 @percpu_ref_exit(i32* %128)
  br label %130

130:                                              ; preds = %126, %118
  %131 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %132 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @blk_free_queue_stats(i32 %133)
  br label %135

135:                                              ; preds = %130, %57
  %136 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %137 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %136, i32 0, i32 3
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = call i32 @bdi_put(%struct.TYPE_3__* %138)
  br label %140

140:                                              ; preds = %135, %48
  %141 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %142 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %141, i32 0, i32 2
  %143 = call i32 @bioset_exit(i32* %142)
  br label %144

144:                                              ; preds = %140, %37
  %145 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %146 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @ida_simple_remove(i32* @blk_queue_ida, i64 %147)
  br label %149

149:                                              ; preds = %144, %28
  %150 = load i32, i32* @blk_requestq_cachep, align 4
  %151 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %152 = call i32 @kmem_cache_free(i32 %150, %struct.request_queue* %151)
  store %struct.request_queue* null, %struct.request_queue** %3, align 8
  br label %153

153:                                              ; preds = %149, %124, %16
  %154 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  ret %struct.request_queue* %154
}

declare dso_local %struct.request_queue* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @bdi_alloc_node(i32, i32) #1

declare dso_local i32 @blk_alloc_queue_stats(...) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i64 @blkcg_init_queue(%struct.request_queue*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @blk_free_queue_stats(i32) #1

declare dso_local i32 @bdi_put(%struct.TYPE_3__*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
