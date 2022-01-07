; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_tls.c_task_set_thread_area.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_tls.c_task_set_thread_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.user_desc = type { i32, i32 }

@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_set_thread_area(%struct.task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_desc, align 4
  store %struct.task* %0, %struct.task** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.task*, %struct.task** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = bitcast %struct.user_desc* %6 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call i64 @user_get_task(%struct.task* %7, i32 %8, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @_EFAULT, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.task*, %struct.task** %4, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 0
  store i32 12, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %5, align 4
  %28 = bitcast %struct.user_desc* %6 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i64 @user_put(i32 %27, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @_EFAULT, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @user_get_task(%struct.task*, i32, i64) #1

declare dso_local i64 @user_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
