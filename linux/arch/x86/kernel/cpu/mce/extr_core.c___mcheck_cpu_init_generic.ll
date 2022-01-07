; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_generic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MCP_DONTLOG = common dso_local global i32 0, align 4
@MAX_NR_BANKS = common dso_local global i32 0, align 4
@MCP_UC = common dso_local global i32 0, align 4
@X86_CR4_MCE = common dso_local global i32 0, align 4
@MSR_IA32_MCG_CAP = common dso_local global i32 0, align 4
@MCG_CTL_P = common dso_local global i32 0, align 4
@MSR_IA32_MCG_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mcheck_cpu_init_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_init_generic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @MCP_DONTLOG, align 4
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_NR_BANKS, align 4
  %11 = call i32 @bitmap_fill(i32 %9, i32 %10)
  %12 = load i32, i32* @MCP_UC, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @machine_check_poll(i32 %14, i32* %2)
  %16 = load i32, i32* @X86_CR4_MCE, align 4
  %17 = call i32 @cr4_set_bits(i32 %16)
  %18 = load i32, i32* @MSR_IA32_MCG_CAP, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rdmsrl(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MCG_CTL_P, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* @MSR_IA32_MCG_CTL, align 4
  %27 = call i32 @wrmsr(i32 %26, i32 -1, i32 -1)
  br label %28

28:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @machine_check_poll(i32, i32*) #1

declare dso_local i32 @cr4_set_bits(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
