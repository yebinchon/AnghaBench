; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_schedule_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_schedule_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkcg_schedule_throttle(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PF_KTHREAD, align 4
  %9 = and i32 %7, %8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = call i32 @blk_get_queue(%struct.request_queue* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %41

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  %22 = icmp ne %struct.request_queue* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.request_queue*, %struct.request_queue** %25, align 8
  %27 = call i32 @blk_put_queue(%struct.request_queue* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store %struct.request_queue* %29, %struct.request_queue** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %40 = call i32 @set_notify_resume(%struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %38, %17, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_get_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

declare dso_local i32 @set_notify_resume(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
