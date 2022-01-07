; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_check.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_gq = type { i32 }
%struct.blkcg = type { i32 }
%struct.blkcg_policy = type { i32 }
%struct.request_queue = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blkcg_gq* (%struct.blkcg*, %struct.blkcg_policy*, %struct.request_queue*)* @blkg_lookup_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blkcg_gq* @blkg_lookup_check(%struct.blkcg* %0, %struct.blkcg_policy* %1, %struct.request_queue* %2) #0 {
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.blkcg*, align 8
  %6 = alloca %struct.blkcg_policy*, align 8
  %7 = alloca %struct.request_queue*, align 8
  store %struct.blkcg* %0, %struct.blkcg** %5, align 8
  store %struct.blkcg_policy* %1, %struct.blkcg_policy** %6, align 8
  store %struct.request_queue* %2, %struct.request_queue** %7, align 8
  %8 = call i32 (...) @rcu_read_lock_held()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %17 = load %struct.blkcg_policy*, %struct.blkcg_policy** %6, align 8
  %18 = call i32 @blkcg_policy_enabled(%struct.request_queue* %16, %struct.blkcg_policy* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.blkcg_gq* @ERR_PTR(i32 %22)
  store %struct.blkcg_gq* %23, %struct.blkcg_gq** %4, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %27 = call %struct.blkcg_gq* @__blkg_lookup(%struct.blkcg* %25, %struct.request_queue* %26, i32 1)
  store %struct.blkcg_gq* %27, %struct.blkcg_gq** %4, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  ret %struct.blkcg_gq* %29
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @blkcg_policy_enabled(%struct.request_queue*, %struct.blkcg_policy*) #1

declare dso_local %struct.blkcg_gq* @ERR_PTR(i32) #1

declare dso_local %struct.blkcg_gq* @__blkg_lookup(%struct.blkcg*, %struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
