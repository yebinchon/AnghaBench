; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c___blkcg_iolatency_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c___blkcg_iolatency_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.iolatency_grp = type { %struct.rq_wait }
%struct.rq_wait = type { i32 }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@iolat_acquire_inflight = common dso_local global i32 0, align 4
@iolat_cleanup_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.iolatency_grp*, i32, i32)* @__blkcg_iolatency_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blkcg_iolatency_throttle(%struct.rq_qos* %0, %struct.iolatency_grp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rq_qos*, align 8
  %6 = alloca %struct.iolatency_grp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rq_wait*, align 8
  %10 = alloca i32, align 4
  store %struct.rq_qos* %0, %struct.rq_qos** %5, align 8
  store %struct.iolatency_grp* %1, %struct.iolatency_grp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iolatency_grp*, %struct.iolatency_grp** %6, align 8
  %12 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %11, i32 0, i32 0
  store %struct.rq_wait* %12, %struct.rq_wait** %9, align 8
  %13 = load %struct.iolatency_grp*, %struct.iolatency_grp** %6, align 8
  %14 = call %struct.TYPE_2__* @lat_to_blkg(%struct.iolatency_grp* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %21 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @blkcg_schedule_throttle(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @fatal_signal_pending(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %25
  %33 = load %struct.rq_wait*, %struct.rq_wait** %9, align 8
  %34 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %33, i32 0, i32 0
  %35 = call i32 @atomic_inc(i32* %34)
  br label %42

36:                                               ; preds = %28
  %37 = load %struct.rq_wait*, %struct.rq_wait** %9, align 8
  %38 = load %struct.iolatency_grp*, %struct.iolatency_grp** %6, align 8
  %39 = load i32, i32* @iolat_acquire_inflight, align 4
  %40 = load i32, i32* @iolat_cleanup_cb, align 4
  %41 = call i32 @rq_qos_wait(%struct.rq_wait* %37, %struct.iolatency_grp* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @lat_to_blkg(%struct.iolatency_grp*) #1

declare dso_local i32 @blkcg_schedule_throttle(i32, i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rq_qos_wait(%struct.rq_wait*, %struct.iolatency_grp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
