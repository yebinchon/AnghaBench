; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_smp.c___cpu_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_smp.c___cpu_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@secondary_stack = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"cr31\00", align 1
@secondary_hint = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"cr18\00", align 1
@secondary_ccr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"cr17\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cr<29, 0>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpu_up(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 1, %6
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @task_stack_page(%struct.task_struct* %9)
  %11 = trunc i64 %10 to i32
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @THREAD_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = sub nsw i64 %14, 8
  store i64 %15, i64* @secondary_stack, align 8
  %16 = call i64 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %16, i64* @secondary_hint, align 8
  %17 = call i64 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %17, i64* @secondary_ccr, align 8
  %18 = call i32 @mtcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 34)
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @mfcr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @cpumask_of(i32 %24)
  %26 = call i32 @send_arch_ipi(i32 %25)
  br label %33

27:                                               ; preds = %2
  %28 = call i64 @mfcr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i64, i64* %5, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mtcr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @cpu_online(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %34

40:                                               ; preds = %34
  store i64 0, i64* @secondary_stack, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @mfcr(i8*) #1

declare dso_local i32 @mtcr(i8*, i64) #1

declare dso_local i32 @send_arch_ipi(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @cpu_online(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
