; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_get_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bfq_queue = type { i32, i32 }
%struct.bfq_data = type { %struct.bfq_queue, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }
%struct.bfq_io_cq = type { i32 }
%struct.bfq_group = type { i32 }

@bfq_pool = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"using oom bfqq\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"get_queue, bfqq not in async: %p, %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"get_queue, at end: %p, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_data*, %struct.bio*, i32, %struct.bfq_io_cq*)* @bfq_get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_get_queue(%struct.bfq_data* %0, %struct.bio* %1, i32 %2, %struct.bfq_io_cq* %3) #0 {
  %5 = alloca %struct.bfq_data*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfq_io_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bfq_queue**, align 8
  %12 = alloca %struct.bfq_queue*, align 8
  %13 = alloca %struct.bfq_group*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bfq_io_cq* %3, %struct.bfq_io_cq** %8, align 8
  %14 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %8, align 8
  %15 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IOPRIO_PRIO_DATA(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %8, align 8
  %19 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IOPRIO_PRIO_CLASS(i32 %20)
  store i32 %21, i32* %10, align 4
  store %struct.bfq_queue** null, %struct.bfq_queue*** %11, align 8
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = call i32 @__bio_blkcg(%struct.bio* %24)
  %26 = call %struct.bfq_group* @bfq_find_set_group(%struct.bfq_data* %23, i32 %25)
  store %struct.bfq_group* %26, %struct.bfq_group** %13, align 8
  %27 = load %struct.bfq_group*, %struct.bfq_group** %13, align 8
  %28 = icmp ne %struct.bfq_group* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %31 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %30, i32 0, i32 0
  store %struct.bfq_queue* %31, %struct.bfq_queue** %12, align 8
  br label %102

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %37 = load %struct.bfq_group*, %struct.bfq_group** %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.bfq_queue** @bfq_async_queue_prio(%struct.bfq_data* %36, %struct.bfq_group* %37, i32 %38, i32 %39)
  store %struct.bfq_queue** %40, %struct.bfq_queue*** %11, align 8
  %41 = load %struct.bfq_queue**, %struct.bfq_queue*** %11, align 8
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %41, align 8
  store %struct.bfq_queue* %42, %struct.bfq_queue** %12, align 8
  %43 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %44 = icmp ne %struct.bfq_queue* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %102

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* @bfq_pool, align 4
  %49 = load i32, i32* @GFP_NOWAIT, align 4
  %50 = load i32, i32* @__GFP_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @__GFP_NOWARN, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %55 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.bfq_queue* @kmem_cache_alloc_node(i32 %48, i32 %53, i32 %58)
  store %struct.bfq_queue* %59, %struct.bfq_queue** %12, align 8
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %61 = icmp ne %struct.bfq_queue* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %47
  %63 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %64 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %65 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %8, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @bfq_init_bfqq(%struct.bfq_data* %63, %struct.bfq_queue* %64, %struct.bfq_io_cq* %65, i32 %68, i32 %69)
  %71 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %72 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %71, i32 0, i32 1
  %73 = load %struct.bfq_group*, %struct.bfq_group** %13, align 8
  %74 = call i32 @bfq_init_entity(i32* %72, %struct.bfq_group* %73)
  %75 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %76 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %77 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %75, %struct.bfq_queue* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %84

78:                                               ; preds = %47
  %79 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %80 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %79, i32 0, i32 0
  store %struct.bfq_queue* %80, %struct.bfq_queue** %12, align 8
  %81 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %82 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %83 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %81, %struct.bfq_queue* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %102

84:                                               ; preds = %62
  %85 = load %struct.bfq_queue**, %struct.bfq_queue*** %11, align 8
  %86 = icmp ne %struct.bfq_queue** %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %89 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %93 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %94 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %95 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %96 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %92, %struct.bfq_queue* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.bfq_queue* %94, i32 %97)
  %99 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %100 = load %struct.bfq_queue**, %struct.bfq_queue*** %11, align 8
  store %struct.bfq_queue* %99, %struct.bfq_queue** %100, align 8
  br label %101

101:                                              ; preds = %87, %84
  br label %102

102:                                              ; preds = %101, %78, %45, %29
  %103 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %104 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %108 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %109 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %110 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  %111 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %107, %struct.bfq_queue* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.bfq_queue* %109, i32 %112)
  %114 = call i32 (...) @rcu_read_unlock()
  %115 = load %struct.bfq_queue*, %struct.bfq_queue** %12, align 8
  ret %struct.bfq_queue* %115
}

declare dso_local i32 @IOPRIO_PRIO_DATA(i32) #1

declare dso_local i32 @IOPRIO_PRIO_CLASS(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bfq_group* @bfq_find_set_group(%struct.bfq_data*, i32) #1

declare dso_local i32 @__bio_blkcg(%struct.bio*) #1

declare dso_local %struct.bfq_queue** @bfq_async_queue_prio(%struct.bfq_data*, %struct.bfq_group*, i32, i32) #1

declare dso_local %struct.bfq_queue* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @bfq_init_bfqq(%struct.bfq_data*, %struct.bfq_queue*, %struct.bfq_io_cq*, i32, i32) #1

declare dso_local i32 @bfq_init_entity(i32*, %struct.bfq_group*) #1

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
