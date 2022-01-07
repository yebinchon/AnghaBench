; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_aux.c_fclex.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_aux.c_fclex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SW_Backward = common dso_local global i32 0, align 4
@SW_Summary = common dso_local global i32 0, align 4
@SW_Stack_Fault = common dso_local global i32 0, align 4
@SW_Precision = common dso_local global i32 0, align 4
@SW_Underflow = common dso_local global i32 0, align 4
@SW_Overflow = common dso_local global i32 0, align 4
@SW_Zero_Div = common dso_local global i32 0, align 4
@SW_Denorm_Op = common dso_local global i32 0, align 4
@SW_Invalid = common dso_local global i32 0, align 4
@partial_status = common dso_local global i32 0, align 4
@no_ip_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fclex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fclex() #0 {
  %1 = load i32, i32* @SW_Backward, align 4
  %2 = load i32, i32* @SW_Summary, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @SW_Stack_Fault, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SW_Precision, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SW_Underflow, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SW_Overflow, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SW_Zero_Div, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SW_Denorm_Op, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SW_Invalid, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @partial_status, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @partial_status, align 4
  store i32 1, i32* @no_ip_update, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
