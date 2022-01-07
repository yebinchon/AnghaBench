; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.blkcg_gq* }
%struct.blkcg_gq = type { i32 }

@blkcg_root = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcg_init_queue(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blkcg_gq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.blkcg_gq* @blkg_alloc(i32* @blkcg_root, %struct.request_queue* %8, i32 %9)
  store %struct.blkcg_gq* %10, %struct.blkcg_gq** %4, align 8
  %11 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %12 = icmp ne %struct.blkcg_gq* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @radix_tree_preload(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %28 = call %struct.blkcg_gq* @blkg_create(i32* @blkcg_root, %struct.request_queue* %26, %struct.blkcg_gq* %27)
  store %struct.blkcg_gq* %28, %struct.blkcg_gq** %5, align 8
  %29 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %30 = call i64 @IS_ERR(%struct.blkcg_gq* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %62

33:                                               ; preds = %16
  %34 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 1
  store %struct.blkcg_gq* %34, %struct.blkcg_gq** %36, align 8
  %37 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (...) @radix_tree_preload_end()
  br label %45

45:                                               ; preds = %43, %33
  %46 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %47 = call i32 @blk_iolatency_init(%struct.request_queue* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %58

51:                                               ; preds = %45
  %52 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %53 = call i32 @blk_throtl_init(%struct.request_queue* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %74

58:                                               ; preds = %56, %50
  %59 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %60 = call i32 @blkg_destroy_all(%struct.request_queue* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %74

62:                                               ; preds = %32
  %63 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 (...) @radix_tree_preload_end()
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %73 = call i32 @PTR_ERR(%struct.blkcg_gq* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %58, %57, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.blkcg_gq* @blkg_alloc(i32*, %struct.request_queue*, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.blkcg_gq* @blkg_create(i32*, %struct.request_queue*, %struct.blkcg_gq*) #1

declare dso_local i64 @IS_ERR(%struct.blkcg_gq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @blk_iolatency_init(%struct.request_queue*) #1

declare dso_local i32 @blk_throtl_init(%struct.request_queue*) #1

declare dso_local i32 @blkg_destroy_all(%struct.request_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
