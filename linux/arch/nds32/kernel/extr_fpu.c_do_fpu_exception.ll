; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_do_fpu_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_do_fpu_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@FPU_DISABLE_EXCEPTION = common dso_local global i32 0, align 4
@FPU_EXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fpu_exception(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FPU_DISABLE_EXCEPTION, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = call i32 (...) @preempt_disable()
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = call i32 @do_fpu_context_switch(%struct.pt_regs* %11)
  %13 = call i32 (...) @preempt_enable()
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FPU_EXCEPTION, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = call i32 @handle_fpu_exception(%struct.pt_regs* %19)
  br label %22

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @do_fpu_context_switch(%struct.pt_regs*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @handle_fpu_exception(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
