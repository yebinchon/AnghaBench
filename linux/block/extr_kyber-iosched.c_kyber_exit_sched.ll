; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_exit_sched.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_exit_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.kyber_queue_data* }
%struct.kyber_queue_data = type { i32, i32*, i32 }

@KYBER_NUM_DOMAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elevator_queue*)* @kyber_exit_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyber_exit_sched(%struct.elevator_queue* %0) #0 {
  %2 = alloca %struct.elevator_queue*, align 8
  %3 = alloca %struct.kyber_queue_data*, align 8
  %4 = alloca i32, align 4
  store %struct.elevator_queue* %0, %struct.elevator_queue** %2, align 8
  %5 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %6 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %5, i32 0, i32 0
  %7 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  store %struct.kyber_queue_data* %7, %struct.kyber_queue_data** %3, align 8
  %8 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %9 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %8, i32 0, i32 2
  %10 = call i32 @del_timer_sync(i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %17 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @sbitmap_queue_free(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %28 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @free_percpu(i32 %29)
  %31 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %32 = call i32 @kfree(%struct.kyber_queue_data* %31)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @sbitmap_queue_free(i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.kyber_queue_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
