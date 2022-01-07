; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_gq = type { %struct.request_queue* }
%struct.blkcg = type { i32, i32 }
%struct.request_queue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blkcg_gq* @blkg_lookup_slowpath(%struct.blkcg* %0, %struct.request_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blkcg*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkcg_gq*, align 8
  store %struct.blkcg* %0, %struct.blkcg** %5, align 8
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %10 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %9, i32 0, i32 1
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.blkcg_gq* @radix_tree_lookup(i32* %10, i32 %13)
  store %struct.blkcg_gq* %14, %struct.blkcg_gq** %8, align 8
  %15 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %16 = icmp ne %struct.blkcg_gq* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %19 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %18, i32 0, i32 0
  %20 = load %struct.request_queue*, %struct.request_queue** %19, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %22 = icmp eq %struct.request_queue* %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = call i32 @lockdep_assert_held(i32* %28)
  %30 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %31 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  %34 = call i32 @rcu_assign_pointer(i32 %32, %struct.blkcg_gq* %33)
  br label %35

35:                                               ; preds = %26, %23
  %36 = load %struct.blkcg_gq*, %struct.blkcg_gq** %8, align 8
  store %struct.blkcg_gq* %36, %struct.blkcg_gq** %4, align 8
  br label %38

37:                                               ; preds = %17, %3
  store %struct.blkcg_gq* null, %struct.blkcg_gq** %4, align 8
  br label %38

38:                                               ; preds = %37, %35
  %39 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  ret %struct.blkcg_gq* %39
}

declare dso_local %struct.blkcg_gq* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.blkcg_gq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
