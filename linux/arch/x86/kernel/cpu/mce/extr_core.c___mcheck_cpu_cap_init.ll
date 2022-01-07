; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_cap_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MSR_IA32_MCG_CAP = common dso_local global i32 0, align 4
@MCG_BANKCNT_MASK = common dso_local global i32 0, align 4
@MAX_NR_BANKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"CPU%d: Using only %u machine check banks out of %u\0A\00", align 1
@mce_num_banks = common dso_local global i32 0, align 4
@MCG_EXT_P = common dso_local global i32 0, align 4
@MSR_IA32_MCG_EIP = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MCG_SER_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mcheck_cpu_cap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_cap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MSR_IA32_MCG_CAP, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @rdmsrl(i32 %3, i32 %4)
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MCG_BANKCNT_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_NR_BANKS, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* @MAX_NR_BANKS, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @MAX_NR_BANKS, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %0
  %19 = load i32, i32* @mce_num_banks, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @this_cpu_write(i32 %19, i32 %20)
  %22 = call i32 (...) @__mcheck_cpu_mce_banks_init()
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @MCG_EXT_P, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @MCG_EXT_CNT(i32 %28)
  %30 = icmp sge i32 %29, 9
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @MSR_IA32_MCG_EIP, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 1), align 4
  br label %33

33:                                               ; preds = %31, %27, %18
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @MCG_SER_P, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @__mcheck_cpu_mce_banks_init(...) #1

declare dso_local i32 @MCG_EXT_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
