; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_policy_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_policy_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blkcg_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blkcg_policy*)* @blkcg_policy_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcg_policy_enabled(%struct.request_queue* %0, %struct.blkcg_policy* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blkcg_policy*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.blkcg_policy* %1, %struct.blkcg_policy** %4, align 8
  %5 = load %struct.blkcg_policy*, %struct.blkcg_policy** %4, align 8
  %6 = icmp ne %struct.blkcg_policy* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.blkcg_policy*, %struct.blkcg_policy** %4, align 8
  %9 = getelementptr inbounds %struct.blkcg_policy, %struct.blkcg_policy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i1 [ false, %2 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
