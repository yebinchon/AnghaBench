; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_p5.c_pentium_machine_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_p5.c_pentium_machine_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@MSR_IA32_P5_MC_ADDR = common dso_local global i32 0, align 4
@MSR_IA32_P5_MC_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CPU#%d: Machine Check Exception:  0x%8X (type 0x%8X).\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"CPU#%d: Possible thermal failure (CPU on fire ?).\0A\00", align 1
@TAINT_MACHINE_CHECK = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64)* @pentium_machine_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pentium_machine_check(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i32 @ist_enter(%struct.pt_regs* %8)
  %10 = load i32, i32* @MSR_IA32_P5_MC_ADDR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @rdmsr(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @MSR_IA32_P5_MC_TYPE, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rdmsr(i32 %14, i32 %15, i32 %16)
  %18 = call i32 (...) @smp_processor_id()
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, i32, ...) @pr_emerg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 (...) @smp_processor_id()
  %27 = call i32 (i8*, i32, ...) @pr_emerg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @TAINT_MACHINE_CHECK, align 4
  %30 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %31 = call i32 @add_taint(i32 %29, i32 %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = call i32 @ist_exit(%struct.pt_regs* %32)
  ret void
}

declare dso_local i32 @ist_enter(%struct.pt_regs*) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @pr_emerg(i8*, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @ist_exit(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
