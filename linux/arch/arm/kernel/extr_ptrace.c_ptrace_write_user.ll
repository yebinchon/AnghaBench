; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_ptrace.c_ptrace_write_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_ptrace.c_ptrace_write_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @ptrace_write_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_write_user(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = and i64 %8, 3
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = icmp uge i64 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %27

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @put_user_reg(%struct.task_struct* %22, i64 %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %20, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @put_user_reg(%struct.task_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
