; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ptrace_64.c_regs_within_kernel_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ptrace_64.c_regs_within_kernel_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@STACK_BIAS = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64)* @regs_within_kernel_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regs_within_kernel_stack(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i64 @kernel_stack_pointer(%struct.pt_regs* %6)
  %8 = load i64, i64* @STACK_BIAS, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @THREAD_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = and i64 %10, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @THREAD_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = and i64 %16, %20
  %22 = icmp eq i64 %15, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @kernel_stack_pointer(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
