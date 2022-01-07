; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32, i32, %struct.blk_mq_hw_ctx*, i32, i32, i32, %struct.TYPE_2__, i32, i64, i32, %struct.request_queue*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.blk_mq_tag_set = type { i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@blk_mq_run_work_fn = common dso_local global i32 0, align 4
@BLK_MQ_F_TAG_SHARED = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@blk_mq_dispatch_wake = common dso_local global i32 0, align 4
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_hw_ctx* (%struct.request_queue*, %struct.blk_mq_tag_set*, i32)* @blk_mq_alloc_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_hw_ctx* @blk_mq_alloc_hctx(%struct.request_queue* %0, %struct.blk_mq_tag_set* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_tag_set* %1, %struct.blk_mq_tag_set** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = load i32, i32* @__GFP_NOWARN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @__GFP_NORETRY, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %16 = call i32 @blk_mq_hw_ctx_size(%struct.blk_mq_tag_set* %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.blk_mq_hw_ctx* @kzalloc_node(i32 %16, i32 %17, i32 %18)
  store %struct.blk_mq_hw_ctx* %19, %struct.blk_mq_hw_ctx** %8, align 8
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %21 = icmp ne %struct.blk_mq_hw_ctx* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %154

23:                                               ; preds = %3
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @zalloc_cpumask_var_node(i32* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %151

31:                                               ; preds = %23
  %32 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %32, i32 0, i32 15
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @NUMA_NO_NODE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %40 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %46, i32 0, i32 14
  %48 = load i32, i32* @blk_mq_run_work_fn, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %50, i32 0, i32 13
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %53, i32 0, i32 12
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %57 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %57, i32 0, i32 11
  store %struct.request_queue* %56, %struct.request_queue** %58, align 8
  %59 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %60 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BLK_MQ_F_TAG_SHARED, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %67, i32 0, i32 10
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load i32, i32* @nr_cpu_ids, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.blk_mq_hw_ctx* @kmalloc_array_node(i32 %70, i32 8, i32 %71, i32 %72)
  %74 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %74, i32 0, i32 3
  store %struct.blk_mq_hw_ctx* %73, %struct.blk_mq_hw_ctx** %75, align 8
  %76 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %76, i32 0, i32 3
  %78 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %77, align 8
  %79 = icmp ne %struct.blk_mq_hw_ctx* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %42
  br label %146

81:                                               ; preds = %42
  %82 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %82, i32 0, i32 4
  %84 = load i32, i32* @nr_cpu_ids, align 4
  %85 = call i32 @ilog2(i32 8)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @sbitmap_init_node(i32* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %141

91:                                               ; preds = %81
  %92 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %92, i32 0, i32 9
  store i64 0, i64* %93, align 8
  %94 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %95 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %94, i32 0, i32 8
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %97, i32 0, i32 7
  %99 = load i32, i32* @blk_mq_dispatch_wake, align 4
  %100 = call i32 @init_waitqueue_func_entry(%struct.TYPE_2__* %98, i32 %99)
  %101 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %106 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %110 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @blk_alloc_flush_queue(%struct.request_queue* %105, i32 %108, i32 %111, i32 %112)
  %114 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %117 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %91
  br label %137

121:                                              ; preds = %91
  %122 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %130 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @init_srcu_struct(i32 %131)
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %135 = call i32 @blk_mq_hctx_kobj_init(%struct.blk_mq_hw_ctx* %134)
  %136 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  store %struct.blk_mq_hw_ctx* %136, %struct.blk_mq_hw_ctx** %4, align 8
  br label %155

137:                                              ; preds = %120
  %138 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %139 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %138, i32 0, i32 4
  %140 = call i32 @sbitmap_free(i32* %139)
  br label %141

141:                                              ; preds = %137, %90
  %142 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %143 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %142, i32 0, i32 3
  %144 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %143, align 8
  %145 = call i32 @kfree(%struct.blk_mq_hw_ctx* %144)
  br label %146

146:                                              ; preds = %141, %80
  %147 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @free_cpumask_var(i32 %149)
  br label %151

151:                                              ; preds = %146, %30
  %152 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %153 = call i32 @kfree(%struct.blk_mq_hw_ctx* %152)
  br label %154

154:                                              ; preds = %151, %22
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %4, align 8
  br label %155

155:                                              ; preds = %154, %133
  %156 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  ret %struct.blk_mq_hw_ctx* %156
}

declare dso_local %struct.blk_mq_hw_ctx* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @blk_mq_hw_ctx_size(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @zalloc_cpumask_var_node(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.blk_mq_hw_ctx* @kmalloc_array_node(i32, i32, i32, i32) #1

declare dso_local i64 @sbitmap_init_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @blk_alloc_flush_queue(%struct.request_queue*, i32, i32, i32) #1

declare dso_local i32 @init_srcu_struct(i32) #1

declare dso_local i32 @blk_mq_hctx_kobj_init(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @sbitmap_free(i32*) #1

declare dso_local i32 @kfree(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
