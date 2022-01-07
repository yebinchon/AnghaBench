; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_p5.c_intel_p5_mcheck_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_p5.c_intel_p5_mcheck_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@mce_p5_enabled = common dso_local global i32 0, align 4
@X86_FEATURE_MCE = common dso_local global i32 0, align 4
@pentium_machine_check = common dso_local global i32 0, align 4
@machine_check_vector = common dso_local global i32 0, align 4
@MSR_IA32_P5_MC_ADDR = common dso_local global i32 0, align 4
@MSR_IA32_P5_MC_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Intel old style machine check architecture supported.\0A\00", align 1
@X86_CR4_MCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Intel old style machine check reporting enabled on CPU#%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_p5_mcheck_init(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %5 = load i32, i32* @mce_p5_enabled, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = load i32, i32* @X86_FEATURE_MCE, align 4
  %11 = call i32 @cpu_has(%struct.cpuinfo_x86* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %30

14:                                               ; preds = %8
  %15 = load i32, i32* @pentium_machine_check, align 4
  store i32 %15, i32* @machine_check_vector, align 4
  %16 = call i32 (...) @wmb()
  %17 = load i32, i32* @MSR_IA32_P5_MC_ADDR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rdmsr(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @MSR_IA32_P5_MC_TYPE, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rdmsr(i32 %21, i32 %22, i32 %23)
  %25 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @X86_CR4_MCE, align 4
  %27 = call i32 @cr4_set_bits(i32 %26)
  %28 = call i32 (...) @smp_processor_id()
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %14, %13, %7
  ret void
}

declare dso_local i32 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @cr4_set_bits(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
