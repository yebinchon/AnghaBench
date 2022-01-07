; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_valid_irq_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_valid_irq_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@hardirq_ctx = common dso_local global i64* null, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@softirq_ctx = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*, i64)* @valid_irq_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_irq_stack(i64 %0, %struct.task_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = call i64 @task_cpu(%struct.task_struct* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64*, i64** @hardirq_ctx, align 8
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @THREAD_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %23, %24
  %26 = icmp ule i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %46

28:                                               ; preds = %19, %3
  %29 = load i64*, i64** @softirq_ctx, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @THREAD_SIZE, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ule i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %46

45:                                               ; preds = %36, %28
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @task_cpu(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
