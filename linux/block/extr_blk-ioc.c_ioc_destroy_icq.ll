; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_ioc_destroy_icq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_ioc_destroy_icq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_cq = type { i32, i32, i32, i32, %struct.request_queue*, %struct.io_context* }
%struct.request_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.elevator_type* }
%struct.elevator_type = type { i32 }
%struct.io_context = type { i32, i32, i32 }

@icq_free_icq_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_cq*)* @ioc_destroy_icq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc_destroy_icq(%struct.io_cq* %0) #0 {
  %2 = alloca %struct.io_cq*, align 8
  %3 = alloca %struct.io_context*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  store %struct.io_cq* %0, %struct.io_cq** %2, align 8
  %6 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %7 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %6, i32 0, i32 5
  %8 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %8, %struct.io_context** %3, align 8
  %9 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %10 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %9, i32 0, i32 4
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %4, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.elevator_type*, %struct.elevator_type** %15, align 8
  store %struct.elevator_type* %16, %struct.elevator_type** %5, align 8
  %17 = load %struct.io_context*, %struct.io_context** %3, align 8
  %18 = getelementptr inbounds %struct.io_context, %struct.io_context* %17, i32 0, i32 2
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.io_context*, %struct.io_context** %3, align 8
  %21 = getelementptr inbounds %struct.io_context, %struct.io_context* %20, i32 0, i32 1
  %22 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %23 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %22, i32 0, i32 4
  %24 = load %struct.request_queue*, %struct.request_queue** %23, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @radix_tree_delete(i32* %21, i32 %26)
  %28 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %29 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %28, i32 0, i32 3
  %30 = call i32 @hlist_del_init(i32* %29)
  %31 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %32 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %31, i32 0, i32 2
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.io_context*, %struct.io_context** %3, align 8
  %35 = getelementptr inbounds %struct.io_context, %struct.io_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.io_cq* @rcu_access_pointer(i32 %36)
  %38 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %39 = icmp eq %struct.io_cq* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.io_context*, %struct.io_context** %3, align 8
  %42 = getelementptr inbounds %struct.io_context, %struct.io_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rcu_assign_pointer(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %47 = call i32 @ioc_exit_icq(%struct.io_cq* %46)
  %48 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %49 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %52 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.io_cq*, %struct.io_cq** %2, align 8
  %54 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %53, i32 0, i32 0
  %55 = load i32, i32* @icq_free_icq_rcu, align 4
  %56 = call i32 @call_rcu(i32* %54, i32 %55)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local %struct.io_cq* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @ioc_exit_icq(%struct.io_cq*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
