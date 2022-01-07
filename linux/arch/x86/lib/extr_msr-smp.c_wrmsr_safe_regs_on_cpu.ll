; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c_wrmsr_safe_regs_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c_wrmsr_safe_regs_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_regs_info = type { i32, i32* }

@EIO = common dso_local global i32 0, align 4
@__wrmsr_safe_regs_on_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wrmsr_safe_regs_on_cpu(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_regs_info, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds %struct.msr_regs_info, %struct.msr_regs_info* %6, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = getelementptr inbounds %struct.msr_regs_info, %struct.msr_regs_info* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @__wrmsr_safe_regs_on_cpu, align 4
  %14 = call i32 @smp_call_function_single(i32 %12, i32 %13, %struct.msr_regs_info* %6, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  br label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.msr_regs_info, %struct.msr_regs_info* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  ret i32 %23
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.msr_regs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
