; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_available_for_proc_work_ilocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_available_for_proc_work_ilocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32, i32, i32 }

@BINDER_LOOPER_STATE_ENTERED = common dso_local global i32 0, align 4
@BINDER_LOOPER_STATE_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_thread*)* @binder_available_for_proc_work_ilocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_available_for_proc_work_ilocked(%struct.binder_thread* %0) #0 {
  %2 = alloca %struct.binder_thread*, align 8
  store %struct.binder_thread* %0, %struct.binder_thread** %2, align 8
  %3 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %4 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %9 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %8, i32 0, i32 1
  %10 = call i64 @binder_worklist_empty_ilocked(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %14 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BINDER_LOOPER_STATE_ENTERED, align 4
  %17 = load i32, i32* @BINDER_LOOPER_STATE_REGISTERED, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %7, %1
  %22 = phi i1 [ false, %7 ], [ false, %1 ], [ %20, %12 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @binder_worklist_empty_ilocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
