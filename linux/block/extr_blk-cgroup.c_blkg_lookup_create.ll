; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_create.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_lookup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_gq = type { i32 }
%struct.blkcg = type { i32 }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blkcg_gq* @blkg_lookup_create(%struct.blkcg* %0, %struct.request_queue* %1) #0 {
  %3 = alloca %struct.blkcg*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.blkcg_gq*, align 8
  %6 = alloca i64, align 8
  store %struct.blkcg* %0, %struct.blkcg** %3, align 8
  store %struct.request_queue* %1, %struct.request_queue** %4, align 8
  %7 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = call %struct.blkcg_gq* @blkg_lookup(%struct.blkcg* %7, %struct.request_queue* %8)
  store %struct.blkcg_gq* %9, %struct.blkcg_gq** %5, align 8
  %10 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %11 = icmp ne %struct.blkcg_gq* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %23 = call %struct.blkcg_gq* @__blkg_lookup_create(%struct.blkcg* %21, %struct.request_queue* %22)
  store %struct.blkcg_gq* %23, %struct.blkcg_gq** %5, align 8
  %24 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  ret %struct.blkcg_gq* %29
}

declare dso_local %struct.blkcg_gq* @blkg_lookup(%struct.blkcg*, %struct.request_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.blkcg_gq* @__blkg_lookup_create(%struct.blkcg*, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
