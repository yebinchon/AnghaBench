; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_winchip.c_winchip_mcheck_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_winchip.c_winchip_mcheck_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@winchip_machine_check = common dso_local global i32 0, align 4
@machine_check_vector = common dso_local global i32 0, align 4
@MSR_IDT_FCR1 = common dso_local global i32 0, align 4
@X86_CR4_MCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Winchip machine check reporting enabled on CPU#0.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winchip_mcheck_init(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %5 = load i32, i32* @winchip_machine_check, align 4
  store i32 %5, i32* @machine_check_vector, align 4
  %6 = call i32 (...) @wmb()
  %7 = load i32, i32* @MSR_IDT_FCR1, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @rdmsr(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -17
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MSR_IDT_FCR1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @wrmsr(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @X86_CR4_MCE, align 4
  %20 = call i32 @cr4_set_bits(i32 %19)
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @cr4_set_bits(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
