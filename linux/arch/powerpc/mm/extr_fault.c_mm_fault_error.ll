; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_fault.c_mm_fault_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_fault.c_mm_fault_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@current = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON_LARGE = common dso_local global i32 0, align 4
@VM_FAULT_SIGSEGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64, i32)* @mm_fault_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_fault_error(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i64 @fatal_signal_pending(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i32 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @SIGKILL, align 4
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VM_FAULT_OOM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = call i32 @user_mode(%struct.pt_regs* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @SIGSEGV, align 4
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %22
  %29 = call i32 (...) @pagefault_out_of_memory()
  br label %57

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %33 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_FAULT_HWPOISON_LARGE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @do_sigbus(%struct.pt_regs* %40, i64 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @VM_FAULT_SIGSEGV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %50, i64 %51)
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %44
  %54 = call i32 (...) @BUG()
  br label %55

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %28
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %49, %39, %26, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @pagefault_out_of_memory(...) #1

declare dso_local i32 @do_sigbus(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @bad_area_nosemaphore(%struct.pt_regs*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
