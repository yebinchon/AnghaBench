; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_validate_sp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_validate_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_sp(i64 %0, %struct.task_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = call i64 @task_stack_page(%struct.task_struct* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @THREAD_SIZE, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
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
  br label %33

28:                                               ; preds = %19, %15
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @valid_irq_stack(i64 %29, %struct.task_struct* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %27, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @valid_irq_stack(i64, %struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
