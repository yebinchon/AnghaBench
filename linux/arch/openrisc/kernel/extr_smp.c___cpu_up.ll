; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c___cpu_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c___cpu_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@smp_cross_call = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"CPU%u: failed to start, IPI controller missing\00", align 1
@EIO = common dso_local global i32 0, align 4
@secondary_thread_info = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@current_pgd = common dso_local global i32* null, align 8
@cpu_running = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CPU%u: failed to start\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpu_up(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load i32*, i32** @smp_cross_call, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = call i32 @task_thread_info(%struct.task_struct* %14)
  store i32 %15, i32* @secondary_thread_info, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_mm, i32 0, i32 0), align 4
  %17 = load i32*, i32** @current_pgd, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = call i32 @boot_secondary(i32 %21, %struct.task_struct* %22)
  %24 = call i32 @msecs_to_jiffies(i32 1000)
  %25 = call i32 @wait_for_completion_timeout(i32* @cpu_running, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %13
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @synchronise_count_master(i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @boot_secondary(i32, %struct.task_struct*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @synchronise_count_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
