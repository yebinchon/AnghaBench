; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_create_task_io_context.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_create_task_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.io_context* }
%struct.io_context = type { i32, i32, i32, i32, i32, i32, i32 }

@iocontext_cachep = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ioc_release_fn = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_task_io_context(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_context*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @iocontext_cachep, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @__GFP_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.io_context* @kmem_cache_alloc_node(i32 %10, i32 %13, i32 %14)
  store %struct.io_context* %15, %struct.io_context** %8, align 8
  %16 = load %struct.io_context*, %struct.io_context** %8, align 8
  %17 = icmp ne %struct.io_context* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load %struct.io_context*, %struct.io_context** %8, align 8
  %27 = getelementptr inbounds %struct.io_context, %struct.io_context* %26, i32 0, i32 6
  %28 = call i32 @atomic_long_set(i32* %27, i32 1)
  %29 = load %struct.io_context*, %struct.io_context** %8, align 8
  %30 = getelementptr inbounds %struct.io_context, %struct.io_context* %29, i32 0, i32 5
  %31 = call i32 @atomic_set(i32* %30, i32 1)
  %32 = load %struct.io_context*, %struct.io_context** %8, align 8
  %33 = getelementptr inbounds %struct.io_context, %struct.io_context* %32, i32 0, i32 4
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.io_context*, %struct.io_context** %8, align 8
  %36 = getelementptr inbounds %struct.io_context, %struct.io_context* %35, i32 0, i32 3
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.io_context*, %struct.io_context** %8, align 8
  %39 = getelementptr inbounds %struct.io_context, %struct.io_context* %38, i32 0, i32 2
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i32 @INIT_RADIX_TREE(i32* %39, i32 %40)
  %42 = load %struct.io_context*, %struct.io_context** %8, align 8
  %43 = getelementptr inbounds %struct.io_context, %struct.io_context* %42, i32 0, i32 1
  %44 = call i32 @INIT_HLIST_HEAD(i32* %43)
  %45 = load %struct.io_context*, %struct.io_context** %8, align 8
  %46 = getelementptr inbounds %struct.io_context, %struct.io_context* %45, i32 0, i32 0
  %47 = load i32, i32* @ioc_release_fn, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %50 = call i32 @task_lock(%struct.task_struct* %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = load %struct.io_context*, %struct.io_context** %52, align 8
  %54 = icmp ne %struct.io_context* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %25
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %58 = icmp eq %struct.task_struct* %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PF_EXITING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59, %55
  %67 = load %struct.io_context*, %struct.io_context** %8, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 1
  store %struct.io_context* %67, %struct.io_context** %69, align 8
  br label %74

70:                                               ; preds = %59, %25
  %71 = load i32, i32* @iocontext_cachep, align 4
  %72 = load %struct.io_context*, %struct.io_context** %8, align 8
  %73 = call i32 @kmem_cache_free(i32 %71, %struct.io_context* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 1
  %77 = load %struct.io_context*, %struct.io_context** %76, align 8
  %78 = icmp ne %struct.io_context* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ 0, %79 ], [ %82, %80 ]
  store i32 %84, i32* %9, align 4
  %85 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %86 = call i32 @task_unlock(%struct.task_struct* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.io_context* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.io_context*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
