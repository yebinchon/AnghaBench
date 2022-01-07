; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_set_cpuid_faulting.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_set_cpuid_faulting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msr_misc_features_shadow = common dso_local global i32 0, align 4
@MSR_MISC_FEATURES_ENABLES_CPUID_FAULT = common dso_local global i32 0, align 4
@MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT = common dso_local global i32 0, align 4
@MSR_MISC_FEATURES_ENABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_cpuid_faulting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpuid_faulting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @msr_misc_features_shadow, align 4
  %5 = call i32 @this_cpu_read(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @MSR_MISC_FEATURES_ENABLES_CPUID_FAULT, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @msr_misc_features_shadow, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @this_cpu_write(i32 %15, i32 %16)
  %18 = load i32, i32* @MSR_MISC_FEATURES_ENABLES, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @wrmsrl(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
