; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_ioc_lookup_icq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_ioc_lookup_icq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_cq = type { %struct.request_queue* }
%struct.io_context = type { i32, i32 }
%struct.request_queue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_cq* @ioc_lookup_icq(%struct.io_context* %0, %struct.request_queue* %1) #0 {
  %3 = alloca %struct.io_context*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.io_cq*, align 8
  store %struct.io_context* %0, %struct.io_context** %3, align 8
  store %struct.request_queue* %1, %struct.request_queue** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.io_context*, %struct.io_context** %3, align 8
  %11 = getelementptr inbounds %struct.io_context, %struct.io_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.io_cq* @rcu_dereference(i32 %12)
  store %struct.io_cq* %13, %struct.io_cq** %5, align 8
  %14 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %15 = icmp ne %struct.io_cq* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %18 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %17, i32 0, i32 0
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = icmp eq %struct.request_queue* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %46

23:                                               ; preds = %16, %2
  %24 = load %struct.io_context*, %struct.io_context** %3, align 8
  %25 = getelementptr inbounds %struct.io_context, %struct.io_context* %24, i32 0, i32 1
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.io_cq* @radix_tree_lookup(i32* %25, i32 %28)
  store %struct.io_cq* %29, %struct.io_cq** %5, align 8
  %30 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %31 = icmp ne %struct.io_cq* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %34 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %33, i32 0, i32 0
  %35 = load %struct.request_queue*, %struct.request_queue** %34, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %37 = icmp eq %struct.request_queue* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.io_context*, %struct.io_context** %3, align 8
  %40 = getelementptr inbounds %struct.io_context, %struct.io_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %43 = call i32 @rcu_assign_pointer(i32 %41, %struct.io_cq* %42)
  br label %45

44:                                               ; preds = %32, %23
  store %struct.io_cq* null, %struct.io_cq** %5, align 8
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %22
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  ret %struct.io_cq* %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.io_cq* @rcu_dereference(i32) #1

declare dso_local %struct.io_cq* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.io_cq*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
