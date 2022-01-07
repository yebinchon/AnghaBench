; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c___cpu_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c___cpu_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 (i32, i64)* }

@secondary_idle_tsk = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Idle Task [%d] %p\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Trying to bring up CPU%u ...\0A\00", align 1
@plat_smp_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@first_lines_of_secondary = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Timeout: CPU%u FAILED to comeup !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpu_up(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %7, %struct.task_struct** @secondary_idle_tsk, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.task_struct* %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_smp_ops, i32 0, i32 0), align 8
  %14 = icmp ne i32 (i32, i64)* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_smp_ops, i32 0, i32 0), align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* @first_lines_of_secondary, align 8
  %19 = call i32 %16(i32 %17, i64 %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @arc_default_smp_cpu_kick(i32 %21, i64 0)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* @HZ, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %37, %23
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @time_before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @cpu_online(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %27

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @cpu_online(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %3, align 4
  br label %46

45:                                               ; preds = %38
  store %struct.task_struct* null, %struct.task_struct** @secondary_idle_tsk, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @arc_default_smp_cpu_kick(i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @cpu_online(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
