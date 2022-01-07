; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/oprofile/extr_backtrace.c_sh_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/oprofile/extr_backtrace.c_sh_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@backtrace_limit = common dso_local global i32 0, align 4
@backtrace_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @backtrace_limit, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @backtrace_limit, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = call i64 @kernel_stack_pointer(%struct.pt_regs* %12)
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %5, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = call i32 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @unwind_stack(i32* null, %struct.pt_regs* %22, i64* %23, i32* @backtrace_ops, i32* %4)
  br label %25

25:                                               ; preds = %21, %18
  br label %40

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64*, i64** %5, align 8
  %33 = icmp ne i64* %32, null
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i64*, i64** %5, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %39 = call i64* @user_backtrace(i64* %37, %struct.pt_regs* %38)
  store i64* %39, i64** %5, align 8
  br label %27

40:                                               ; preds = %25, %34
  ret void
}

declare dso_local i64 @kernel_stack_pointer(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @unwind_stack(i32*, %struct.pt_regs*, i64*, i32*, i32*) #1

declare dso_local i64* @user_backtrace(i64*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
