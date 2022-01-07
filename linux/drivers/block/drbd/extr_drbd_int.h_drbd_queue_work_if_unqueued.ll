; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_queue_work_if_unqueued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_queue_work_if_unqueued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_work_queue = type { i32, i32, i32 }
%struct.drbd_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_work_queue*, %struct.drbd_work*)* @drbd_queue_work_if_unqueued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_queue_work_if_unqueued(%struct.drbd_work_queue* %0, %struct.drbd_work* %1) #0 {
  %3 = alloca %struct.drbd_work_queue*, align 8
  %4 = alloca %struct.drbd_work*, align 8
  %5 = alloca i64, align 8
  store %struct.drbd_work_queue* %0, %struct.drbd_work_queue** %3, align 8
  store %struct.drbd_work* %1, %struct.drbd_work** %4, align 8
  %6 = load %struct.drbd_work_queue*, %struct.drbd_work_queue** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_work_queue, %struct.drbd_work_queue* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.drbd_work*, %struct.drbd_work** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_work, %struct.drbd_work* %10, i32 0, i32 0
  %12 = call i64 @list_empty_careful(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.drbd_work*, %struct.drbd_work** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_work, %struct.drbd_work* %15, i32 0, i32 0
  %17 = load %struct.drbd_work_queue*, %struct.drbd_work_queue** %3, align 8
  %18 = getelementptr inbounds %struct.drbd_work_queue, %struct.drbd_work_queue* %17, i32 0, i32 2
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.drbd_work_queue*, %struct.drbd_work_queue** %3, align 8
  %22 = getelementptr inbounds %struct.drbd_work_queue, %struct.drbd_work_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.drbd_work_queue*, %struct.drbd_work_queue** %3, align 8
  %26 = getelementptr inbounds %struct.drbd_work_queue, %struct.drbd_work_queue* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
