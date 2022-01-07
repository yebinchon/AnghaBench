; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_clear_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_clear_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcg_gq = type { i64 }
%struct.iolatency_grp = type { %struct.child_latency_info }
%struct.child_latency_info = type { i32, i64, i32*, i64, i32 }

@DEFAULT_SCALE_COOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkcg_gq*)* @iolatency_clear_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iolatency_clear_scaling(%struct.blkcg_gq* %0) #0 {
  %2 = alloca %struct.blkcg_gq*, align 8
  %3 = alloca %struct.iolatency_grp*, align 8
  %4 = alloca %struct.child_latency_info*, align 8
  store %struct.blkcg_gq* %0, %struct.blkcg_gq** %2, align 8
  %5 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %6 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.blkcg_gq*, %struct.blkcg_gq** %2, align 8
  %11 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.iolatency_grp* @blkg_to_lat(i64 %12)
  store %struct.iolatency_grp* %13, %struct.iolatency_grp** %3, align 8
  %14 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %15 = icmp ne %struct.iolatency_grp* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %36

17:                                               ; preds = %9
  %18 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %19 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %18, i32 0, i32 0
  store %struct.child_latency_info* %19, %struct.child_latency_info** %4, align 8
  %20 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %21 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %24 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %23, i32 0, i32 4
  %25 = load i32, i32* @DEFAULT_SCALE_COOKIE, align 4
  %26 = call i32 @atomic_set(i32* %24, i32 %25)
  %27 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %28 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %30 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %32 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %34 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %16, %17, %1
  ret void
}

declare dso_local %struct.iolatency_grp* @blkg_to_lat(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
